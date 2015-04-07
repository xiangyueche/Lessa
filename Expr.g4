grammar Expr;		
prog:	(expr NEWLINE | CLASS | DEF)* ;
expr:	expr ('*'|'/') expr
    |	expr ('+'|'-') expr
    |	INT
	|   FLOAT
    |	'(' expr ')'
    ;
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;

CLASS		: 'class' ;
DEF			: 'def' ;
RETURN		: 'return' ;
CONTINUE	: 'continue' ;
FOR			: 'for' ;
WHILE		: 'while' ;
BREAK		: 'break' ;
IN			: 'in' ;
IF			: 'if' ;
ELSE		: 'else' ;
ELIF		: 'elif' ;
NOT			: 'not' ;
AND			: 'and' ;
OR			: 'or' ;
DEL			: 'del' ;
THIS		: 'this' ; 

fragment DIGIT 			: [0-9] ;
fragment EXPONENT	: [+-]? DIGIT+;
FLOAT				: DIGIT+ '.' DIGIT+ EXPONENT? ;

L_BRACKET 		: '{' ;
R_BRACKET 		: '}' ;
L_S_BRACKET		: '[' ;
R_S_BRACKET		: ']' ;
L_P 			: '(' ;
R_P				: ')' ;

NOTE 			: [A-Ga-gR|r] [0-8] [w|h|q|e|s] ;

IDENTIFIER: [a-zA-z][a-zA-Z0-9_]*;

PLUSASSIGN 		: '+=' ;
MINUSASSIGN 	: '-=' ;
TIMESASSIGN 	: '*=' ;
DIVIDEASSIGN 	: '/=' ;

POWER		: '**' ;
TIMES 		: '*' ;
DIVIDE 		: '/' ;
PLUS  		: '+' ;
MINUS 		: '-' ;

EQUAL 		: '==' ;
NOTEQUAL 	: '!=' ;
LE 			: '<=' ;
GE 			: '>=' ;
ASSIGN 		: '=' ;
LESS 		: '<' ;
GREATER 	: '>' ;
SHARP 		: '#' ;
FLAT 		: '~' ;
