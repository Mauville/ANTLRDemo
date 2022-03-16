grammar marzo;

program : expression+ ;

expression: 
    expression '+' expression #suma
    | expression '-' expression #resta
    | expression '*' expression #mult
    | expression '/' expression #div
    | Numero                  #primaria;

comparison:
    expression '<' expression #more
    | expression '>' expression #less
    | expression '==' expression #equal
    | expression '>=' expression #moreq
    | expression '<=' expression #lessq
    | 'not' expression #not
    | Boolean #bool;

print:
    'print' expression #printstatement;
assignment:
    'let' Name #assgn;

declaration:
    assignment '=' expression #dec;

conditional:
    'if' comparison ':' expression # ifblock;

Boolean :  'true'| 'false';
Name: [A-Z];
True: 'true';
False: 'false';
Numero : [0-9]+;
WS : [ \t\n\r]+ -> skip ;


