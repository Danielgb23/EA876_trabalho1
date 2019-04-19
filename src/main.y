%{
#include <stdio.h>

void yyerror(char *c);
int yylex(void);
int i_memoria=0;

%}

%token INT MULT SOMA MINUS OPARENT FPARENT EOL
%left SOMA 
%left MINUS
%left MULT 
%left OPARENT

%%

PROGRAMA:
        PROGRAMA EXPRESSAO EOL {  }
        |
        ;


EXPRESSAO:
    INT { 
	//printf("@Inteiro: %d", i_memoria); 	
	printf("	mov	r0, #%d\n", $1); 	
	printf("	str	r0, [r13, #%d]\n\n", i_memoria); 	
	$$ = i_memoria;
	i_memoria+=4;
          }

    | OPARENT EXPRESSAO FPARENT {
        $$ = $2;
        }

    | EXPRESSAO SOMA EXPRESSAO  {
        $$ = $1;
	printf("	ldr	r1, [r13, #%d]\n", $1); 	
	printf("	ldr	r2, [r13, #%d]\n", $3); 	
	printf("	add	r0, r1, r2\n"); 	
	printf("	str	r0, [r13, #%d]\n\n", $1); 	
        }

    | EXPRESSAO MINUS EXPRESSAO  {
        $$ = $1;
	printf("	ldr	r1, [r13, #%d]\n", $1); 	
	printf("	ldr	r2, [r13, #%d]\n", $3); 	
	printf("	sub	r0, r1, r2\n"); 	
	printf("	str	r0, [r13, #%d]\n\n", $1); 	
        }
 
    | EXPRESSAO MULT EXPRESSAO  {
        $$ = $1;
	printf("	ldr	r1, [r13, #%d]\n", $1); 	
	printf("	ldr	r2, [r13, #%d]\n", $3); 	
	printf("	bl	mult\n"); 	
	printf("	str	r0, [r13, #%d]\n\n", $1); 	
        }
    ;

%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main() {
  	yyparse();
	printf("end\n");
	printf("mult\n");
	printf("	mov	r0, #0\n"); 	
	printf("mult_loop\n");
	printf("	add	r0, r0, r1\n"); 	
	printf("	sub	r2, r2, #1\n"); 	
	printf("	cmp	r2, #0\n"); 	
	printf("	bne	mult_loop\n"); 	
	printf("	mov	pc, lr\n\n\n"); 	
  	return 0;

}
