
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"
%}


%%

[0-9]+  {
          yylval = atoi(yytext);
          return INT;
        }


[+]     {
          return SOMA;
        }

[*]     {
          return MULT;
        }

[(]     {
          return OPARENT;
        }

[)]     {
          return FPARENT;
        }


[-]     {
          return MINUS;
        }


\n   {
         return EOL;
       }

[ \t]+ ;

.     {yyerror("Token nao reconhecido!\n");}

%%

int yywrap() {
  return 1;
}
