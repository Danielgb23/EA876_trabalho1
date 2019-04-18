%{
#include <stdio.h>

void yyerror(char *c);
int yylex(void);

%}

%token INT MULT SOMA MINUS OPARENT FPARENT EOL
%left SOMA 
%left MINUS
%left MULT 
%left OPARENT

%%

PROGRAMA:
        PROGRAMA EXPRESSAO EOL { printf("Resultado: %d\n", $2); }
        |
        ;


EXPRESSAO:
    INT { $$ = $1;
          }

    | OPARENT EXPRESSAO FPARENT {
        printf("Encontrei parentesis: (%d) \n", $2);
        $$ = $2;
        }

    | EXPRESSAO MULT EXPRESSAO  {
        printf("Encontrei multiplicacao: %d * %d = %d\n", $1, $3, $1*$3);
        $$ = $1 * $3;
        }

    | EXPRESSAO SOMA EXPRESSAO  {
        printf("Encontrei soma: %d + %d = %d\n", $1, $3, $1+$3);
        $$ = $1 + $3;
        }
    
    | EXPRESSAO MINUS EXPRESSAO  {
        printf("Encontrei subtracao: %d - %d = %d\n", $1, $3, $1-$3);
        $$ = $1 - $3;
        }
 
    ;

%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main() {
  yyparse();
  return 0;

}
