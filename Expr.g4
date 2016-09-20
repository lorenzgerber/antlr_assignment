grammar Expr;

expr	:	'(' expr Binop expr ')' | integer = Int ;
Int	:	'-'? [1-9][0-10]* ;
Binop	:	'+' | '-' | '*' | '/';
WS 	:	[ \n\r\t] -> skip;