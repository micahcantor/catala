(* This file is part of the Catala compiler, a specification language for tax
   and social benefits computation rules. Copyright (C) 2020 Inria, contributor:
   Denis Merigoux <denis.merigoux@inria.fr>

   Licensed under the Apache License, Version 2.0 (the "License"); you may not
   use this file except in compliance with the License. You may obtain a copy of
   the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
   License for the specific language governing permissions and limitations under
   the License. *)

include Shared_ast

type 'm naked_expr = (lcalc, 'm mark) naked_gexpr
and 'm expr = (lcalc, 'm mark) gexpr

type 'm program = 'm expr Shared_ast.program

let monad_return ~(mark : 'a mark) e = Expr.einj e some_constr option_enum mark

let monad_empty ~(mark : 'a mark) =
  Expr.einj (Expr.elit LUnit mark) none_constr option_enum mark

let monad_bind_var ~(mark : 'a mark) f x arg =
  let cases =
    EnumConstructor.Map.of_seq
      (List.to_seq
         [
           ( none_constr,
             let x = Var.make "_" in
             Expr.eabs
               (Expr.bind [| x |]
                  (Expr.einj (Expr.evar x mark) none_constr option_enum mark))
               [TLit TUnit, Expr.mark_pos mark]
               mark );
           (* | None x -> None x *)
           ( some_constr,
             Expr.eabs (Expr.bind [| x |] f) [TAny, Expr.mark_pos mark] mark )
           (*| Some x -> f (where f contains x as a free variable) *);
         ])
  in
  Expr.ematch arg option_enum cases mark

let monad_bind ~(mark : 'a mark) f arg =
  let x = Var.make "x" in
  (* todo modify*)
  monad_bind_var f x arg ~mark

let monad_bind_cont ~(mark : 'a mark) f arg =
  let x = Var.make "x" in
  monad_bind_var (f x) x arg ~mark

let monad_mbind_mvar ~(mark : 'a mark) f xs args =
  (* match e1, ..., en with | Some e1', ..., Some en' -> f (e1, ..., en) | _ ->
     None *)
  ListLabels.fold_left2 xs args ~f:(monad_bind_var ~mark)
    ~init:(Expr.eapp f (List.map (fun v -> Expr.evar v mark) xs) mark)

let monad_mbind ~(mark : 'a mark) f args =
  (* match e1, ..., en with | Some e1', ..., Some en' -> f (e1, ..., en) | _ ->
     None *)
  let vars =
    ListLabels.mapi args ~f:(fun i _ -> Var.make (Format.sprintf "e_%i" i))
  in
  monad_mbind_mvar f vars args ~mark

let monad_mbind_cont ~(mark : 'a mark) f args =
  let vars =
    ListLabels.mapi args ~f:(fun i _ -> Var.make (Format.sprintf "e_%i" i))
  in
  ListLabels.fold_left2 vars args ~f:(monad_bind_var ~mark) ~init:(f vars)
(* monad_mbind_mvar (f vars) vars args ~mark *)

let monad_mmap_mvar ~(mark : 'a mark) f xs args =
  (* match e1, ..., en with | Some e1', ..., Some en' -> f (e1, ..., en) | _ ->
     None *)
  ListLabels.fold_left2 xs args ~f:(monad_bind_var ~mark)
    ~init:
      (Expr.einj
         (Expr.eapp f (List.map (fun v -> Expr.evar v mark) xs) mark)
         some_constr option_enum mark)

let monad_map_var ~(mark : 'a mark) f x arg = monad_mmap_mvar f [x] [arg] ~mark

let monad_map ~(mark : 'a mark) f arg =
  let x = Var.make "x" in
  monad_map_var f x arg ~mark

let monad_mmap ~(mark : 'a mark) f args =
  let vars =
    ListLabels.mapi args ~f:(fun i _ -> Var.make (Format.sprintf "e_%i" i))
  in
  monad_mmap_mvar f vars args ~mark

let monad_eoe ~(mark : 'a mark) ?(toplevel = false) arg =
  let cases =
    EnumConstructor.Map.of_seq
      (List.to_seq
         [
           ( none_constr,
             let x = Var.make "x" in
             Expr.eabs
               (Expr.bind [| x |] (Expr.eraise NoValueProvided mark))
               [TAny, Expr.mark_pos mark]
               mark );
           (* | None x -> raise NoValueProvided *)
           some_constr, Expr.fun_id mark (* | Some x -> x*);
         ])
  in
  if toplevel then Expr.ematch arg option_enum cases mark
  else monad_return ~mark (Expr.ematch arg option_enum cases mark)
