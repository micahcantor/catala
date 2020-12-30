(* This file was auto-generated based on "parser.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message s =
  match s with
  | 0 -> "expected a law heading, a law article, some text of the declaration of a master file\n"
  | 1 ->
      "expected an inclusion of a Catala file, since this file is a master file which can only \
       contain inclusions of other Catala files\n"
  | 3 -> "expected some text or includes only\n"
  | 7 ->
      "expected another inclusion of a Catala file, since this file is a master file which can \
       only contain inclusions of other Catala files\n"
  | 8 -> "expected some text, another heading or a law article\n"
  | 345 -> "expected a heading, an article title or some text\n"
  | 330 -> "expected an article title, another heading or some text\n"
  | 335 -> "expected a code block, a metadata block, more law text or a heading\n"
  | 341 -> "expected a code block, a metadata block, more law text or a heading\n"
  | 336 -> "expected a declaration or a scope use\n"
  | 22 -> "expected the name of the scope you want to use\n"
  | 24 -> "expected a scope use precondition or a colon\n"
  | 25 -> "expected an expression which will act as the condition\n"
  | 26 -> "expected the first component of the date literal\n"
  | 28 -> "expected a \"/\"\n"
  | 29 -> "expected the second component of the date literal\n"
  | 30 -> "expected a \"/\"\n"
  | 31 -> "expected the third component of the date literal\n"
  | 32 -> "expected a delimiter to finish the date literal\n"
  | 66 -> "expected an operator to compose the expression on the left with\n"
  | 72 -> "expected an enum constructor to test if the expression on the left\n"
  | 71 -> "expected an operator to compose the expression on the left with\n"
  | 127 -> "expected an expression on the right side of the sum or minus operator\n"
  | 155 -> "expected an expression on the right side of the logical operator\n"
  | 74 -> "expected an expression for the argument of this function call\n"
  | 115 -> "expected an expression on the right side of the comparison operator\n"
  | 136 -> "expected an expression on the right side of the multiplication or division operator\n"
  | 129 -> "expected an operator to compose the expression on the left\n"
  | 165 -> "expected an expression standing for the set you want to test for membership\n"
  | 67 -> "expected an identifier standing for a struct field or a subscope name\n"
  | 213 -> "expected a colon after the scope use precondition\n"
  | 69 -> "expected a constructor, to get the payload of this enum case\n"
  | 35 -> "expected the \"for\" keyword to spell the aggregation\n"
  | 149 -> "expected an expression to take the negation of\n"
  | 63 -> "expected an expression to take the opposite of\n"
  | 51 -> "expected an expression to match with\n"
  | 197 -> "expected a pattern matching case\n"
  | 198 -> "expected the name of the constructor for the enum case in the pattern matching\n"
  | 204 ->
      "expected a binding for the constructor payload, or a colon and the matching case expression\n"
  | 205 -> "expected an identifier for this enum case binding\n"
  | 201 -> "expected a colon and then the expression for this matching case\n"
  | 207 -> "expected a colon or a binding for the enum constructor payload\n"
  | 202 -> "expected an expression for this pattern matching case\n"
  | 199 ->
      "expected another match case or the rest of the expression since the previous match case is \
       complete\n"
  | 196 -> "expected the \"with patter\" keyword to complete the pattern matching expression\n"
  | 53 -> "expected an expression inside the parenthesis\n"
  | 188 -> "unmatched parenthesis that should have been closed by here\n"
  | 75 -> "expected a unit for this literal, or a valid operator to complete the expression \n"
  | 55 -> "expected an expression for the test of the conditional\n"
  | 184 -> "expected an expression the for the \"then\" branch of the conditiona\n"
  | 185 ->
      "expected the \"else\" branch of this conditional expression as the \"then\" branch is \
       complete\n"
  | 186 -> "expected an expression for the \"else\" branch of this conditional construction\n"
  | 183 -> "expected the \"then\" keyword as the conditional expression is complete\n"
  | 57 ->
      "expected the \"all\" keyword to mean the \"for all\" construction of the universal test\n"
  | 169 -> "expected an identifier for the bound variable of the universal test\n"
  | 170 -> "expected the \"in\" keyword for the rest of the universal test\n"
  | 171 -> "expected the expression designating the set on which to perform the universal test\n"
  | 172 -> "expected the \"we have\" keyword for this universal test\n"
  | 168 -> "expected an expression for the universal test\n"
  | 177 -> "expected an identifier that will designate the existential witness for the test\n"
  | 178 -> "expected the \"in\" keyword to continue this existential test\n"
  | 179 -> "expected an expression that designates the set subject to the existential test\n"
  | 180 -> "expected a keyword to form the \"such that\" expression for the existential test\n"
  | 181 -> "expected a keyword to complete the \"such that\" construction\n"
  | 175 -> "expected an expression for the existential test\n"
  | 84 ->
      "expected a payload for the enum case constructor, or the rest of the expression (with an \
       operator ?)\n"
  | 85 -> "expected structure fields introduced by --\n"
  | 86 -> "expected the name of the structure field\n"
  | 90 -> "expected a colon\n"
  | 91 -> "expected the expression for this struct field\n"
  | 87 -> "expected another structure field or the closing bracket\n"
  | 88 -> "expected the name of the structure field\n"
  | 159 -> "expected an expression for the content of this enum case\n"
  | 160 ->
      "the expression for the content of the enum case is already well-formed, expected an \
       operator to form a bigger expression\n"
  | 62 -> "expected the keyword following cardinal to compute the number of elements in a set\n"
  | 214 -> "expected a scope use item: a rule, definition or assertion\n"
  | 249 -> "expected the name of the variable subject to the rule\n"
  | 227 ->
      "expected a condition or a consequence for this rule, or the rest of the variable qualified \
       name\n"
  | 256 -> "expected a condition or a consequence for this rule\n"
  | 251 -> "expected filled or not filled for a rule consequence\n"
  | 257 -> "expected the name of the parameter for this dependent variable \n"
  | 250 -> "expected the expression of the rule\n"
  | 254 -> "expected the filled keyword the this rule \n"
  | 228 -> "expected a struct field or a sub-scope context item after the dot\n"
  | 215 -> "expected the name of the label\n"
  | 245 -> "expected a rule or a definition after the label declaration\n"
  | 246 -> "expected the label to which the exception is referring back\n"
  | 248 -> "expected a rule or a definition after the exception declaration\n"
  | 261 -> "expected the name of the variable you want to define\n"
  | 262 -> "expected the defined as keyword to introduce the definition of this variable\n"
  | 264 -> "expected an expression for the consequence of this definition under condition\n"
  | 263 ->
      "expected a expression for defining this function, introduced by the defined as keyword\n"
  | 265 -> "expected an expression for the definition\n"
  | 217 -> "expected an expression that shoud be asserted during execution\n"
  | 218 -> "expecting the name of the varying variable\n"
  | 221 -> "the variable varies with an expression that was expected here\n"
  | 222 -> "expected an indication about the variation sense of the variable, or a new scope item\n"
  | 220 -> "expected an indication about what this variable varies with\n"
  | 230 -> "expected an expression for this condition\n"
  | 240 -> "expected a consequence for this definition under condition\n"
  | 236 -> "expected an expression for this definition under condition\n"
  | 232 -> "expected the name of the variable that should be fixed\n"
  | 233 -> "expected the legislative text by which the value of the variable is fixed\n"
  | 234 -> "expected the legislative text by which the value of the variable is fixed\n"
  | 243 -> "expected a new scope use item \n"
  | 272 -> "expected the kind of the declaration (struct, scope or enum)\n"
  | 273 -> "expected the struct name\n"
  | 274 -> "expected a colon\n"
  | 275 -> "expected struct data or condition\n"
  | 276 -> "expected the name of this struct data \n"
  | 277 -> "expected the type of this struct data, introduced by the content keyword\n"
  | 278 -> "expected the type of this struct data\n"
  | 292 -> "expected the name of this struct condition\n"
  | 285 -> "expected a new struct data, or another declaration or scope use\n"
  | 286 -> "expected the type of the parameter of this struct data function\n"
  | 290 -> "expected a new struct data, or another declaration or scope use\n"
  | 282 -> "expected a new struct data, or another declaration or scope use\n"
  | 295 -> "expected the name of the scope you are declaring\n"
  | 296 -> "expected a colon followed by the list of context items of this scope\n"
  | 297 -> "expected a context item introduced by \"context\"\n"
  | 298 -> "expected the name of this new context item\n"
  | 299 -> "expected the kind of this context item: is it a condition, a sub-scope or a data?\n"
  | 300 -> "expected the name of the subscope for this context item\n"
  | 307 -> "expected another scope context item or the end of the scope declaration\n"
  | 302 -> "expected the type of this context item\n"
  | 303 -> "expected the next context item or a dependency declaration for this item\n"
  | 305 -> "expected the next context item or a dependency declaration for this item\n"
  | 310 -> "expected the name of your enum\n"
  | 311 -> "expected a colon\n"
  | 312 -> "expected an enum case\n"
  | 313 -> "expected the name of an enum case \n"
  | 314 -> "expected a payload for your enum case, or another case or declaration \n"
  | 315 -> "expected a content type\n"
  | 320 -> "expected another enum case, or a new declaration or scope use\n"
  | 18 -> "expected a declaration or a scope use\n"
  | 19 -> "expected some text or the beginning of a code section\n"
  | 20 -> "expected a declaration or a scope use\n"
  | 21 -> "should not happen\n"
  | 326 -> "expected a metadata-closing tag\n"
  | 327 -> "expected a metadata-closing tag\n"
  | _ -> raise Not_found
