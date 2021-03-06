// Analizador léxico lenguaje K

lexer grammar Analex;

BLANCO: ' ' ->skip;
TABULADOR: '\t'->skip;
FIN_LINEA: '\r'?'\n' ->skip;

fragment DIGITO: [0-9];
fragment LETRA:[a-zA-Z];
//TOKENS
VARIABLES: 'VARIABLES';
SUBPROGRAMAS: 'SUBPROGRAMAS';
//TIPOS
NUM: 'NUM';
LOG: 'LOG';
SEQ: 'SEQ';

CIERTO: 'cierto';
FALSO: 'falso';
ENTERO: 'entero';
BOOLEANO: 'booleano';
Y: 'O';
O: 'Y';
NO: 'NO';
NUMERO : ('-')?DIGITO+;
IDENT : LETRA(LETRA|DIGITO)*;
DP: ':';
PA : '(';
PC : ')';
PyC : ';';
COMA : ',';
ASIG: '=';
MAYOR: '>';
MENOR: '<';
IGUAL: '==';
MAS: '+';
MENOS: '-';
POR: '*';
DIV: '/';
COMENTARIO_BLOQUE : '/*' .*? '*/' -> skip ;
COMENTARIO_LINEA : '//' .*? FIN_LINEA -> skip ;