// Define a grammar called Hello
grammar TuringMachine;
machine		:	'(' state + ';' inputalphabet ';' tapealphabet ';' start ';' accepted + ')' '(' (transition)(';' transition)* ')';
state   	:	'Q' DIGIT ;
inputalphabet 	:	(SYMBOL|DIGIT) +;
tapealphabet    :       (inputalphabet|BLANK) +;
start		:	state ;
accepted	:	state ;
transition      :       state ',' tapealphabet '->' state ',' tapealphabet ',' DIRECTION;
DIRECTION       :       [L|R] ;
DIGIT		:	[1-9][0-9] * ;
SYMBOL		:	[a-zA-Z0-9];
BLANK		:       'blank';
WS     		:	[ \t\r\n]+ -> skip ; 