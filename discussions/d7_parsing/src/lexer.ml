(* Type *)
type token =
| Tok_Int of int
| Tok_Mult
| Tok_Plus
| Tok_LParen
| Tok_RParen
| Tok_EOF

let re_int = Str.regexp "-?[0-9]+"
let re_mult = Str.regexp "\\*"
let re_plus = Str.regexp "\\+"
let re_lparen = Str.regexp "("
let re_rparen = Str.regexp ")"
let re_space = Str.regexp " "

let string_of_token tok = match tok with
| Tok_Int(i) -> string_of_int i
| Tok_Mult -> "*"
| Tok_Plus -> "+"
| Tok_LParen -> "("
| Tok_RParen -> ")"
| Tok_EOF -> ""

let rec string_of_list conv lst = 
match lst with
| [] -> ""
| h::[] -> conv h
| h::t -> (conv h) ^ " " ^ (string_of_list conv t)

(* Given source code returns a token list. *)
let rec lexer (input : string) : token list =
  failwith "unimplemented"
