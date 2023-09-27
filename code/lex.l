%{
    #include "syntax.tab.h"
%}
/**/
digit [0-9]
letter [a-zA-Z]

%%
{digit}+ {/*INT*/return INT;}
{digit}+[.]{digit}+ {/*FLOAT*/ return FLOAT;}
 {/*ID*/ return ID;}
 {/*SEMI*/ return SEMI;}
 {/*COMMA*/ return COMMA;}
 {/*ASSIGNOP*/ return ASSIGNOP;}
 {/*RELOP*/ return RELOP;}
 {/*PLUS*/ return PLUS;}
 {/*MINUS*/ return MINUS;}
 {/*STAR*/ return STAR;}
 {/*DIV*/ return DIV;}
 {/*AND*/ return AND;}
 {/*OR*/ return OR;}
 {/*DOT*/ return DOT;}
 {/*NOT*/ return NOT;}
 {/*TYPE*/ return TYPE;}
 {/*LP*/ return LP;}
 {/*RP*/ return RP;}
 {/*LB*/ return LB;}
 {/*RB*/ return RB;}
 {/*LC*/ return LC;}
 {/*RC*/ return RC;}
 {/*STRUCT*/ return STRUCT;}
 {/*RETURN*/ return RETURN;}
 {/*IF*/ return IF;}
 {/*ELSE*/ return ELSE;}
 {/*WHILE*/ return WHILE;}

. {printf("Error type A at line%d: unknown character %s\n",yylineno,yytext)}
%%
