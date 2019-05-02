%{
#include <stdio.h>

void yyerror(char *c);
int yylex(void);
int i_memoria=0;
int mult=0;

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
	printf("int%d	dcd %d\n", i_memoria, $1); 	
	//printf("	ldr	r0, =int%d\n", i_memoria); 	
	//printf("	ldr	r0, [r0]\n"); 	
	//printf("	str	r0, [r13, #%d]\n\n", i_memoria); 	
	$$ = i_memoria;
	i_memoria+=1;
          }

	|MINUS INT{
	//printf("@Inteiro: %d", i_memoria); 	
	printf("int%d	dcd -%d\n", i_memoria, $2); 	
	//printf("	ldr	r0, =int%d\n", i_memoria); 	
	//printf("	ldr	r0, [r0]\n"); 	
	//printf("	str	r0, [r13, #%d]\n\n", i_memoria); 	
	$$ = i_memoria;
	i_memoria+=1;
          }

    | OPARENT EXPRESSAO FPARENT {
        $$ = $2;
        }

    | EXPRESSAO SOMA EXPRESSAO  {
        $$ = $1;
	printf("	ldr	r3, =int%d\n", $1); 	
	printf("	ldr	r1, [r3]\n"); 	
	printf("	ldr	r2, =int%d\n", $3); 	
	printf("	ldr	r2, [r2]\n"); 	
	printf("	add	r0, r1, r2\n"); 	
	printf("	str	r0, [r3]\n\n"); 	
        }

    | EXPRESSAO MINUS EXPRESSAO  {
        $$ = $1;
	printf("	ldr	r3, =int%d\n", $1); 	
	printf("	ldr	r1, [r3]\n"); 	
	printf("	ldr	r2, =int%d\n", $3); 	
	printf("	ldr	r2, [r2]\n"); 	
	printf("	sub	r0, r1, r2\n"); 	
	printf("	str	r0, [r3]\n\n"); 	
        }
 
    | EXPRESSAO MULT EXPRESSAO  {
        $$ = $1;
	mult=1;
	printf("	ldr	r3, =int%d\n", $1); 	
	printf("	ldr	r1, [r3]\n"); 	
	printf("	ldr	r2, =int%d\n", $3); 	
	printf("	ldr	r2, [r2]\n"); 	
	printf("	bl	mult\n"); 	
	printf("	str	r0, [r3]\n\n"); 	
        }
    ;

%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main() {
  	yyparse();
	printf("end\n");

	if(mult){//se houver multiplicacao imprime a funcao
		printf("mult\n");
		printf("	mov	r0, #0\n"); 	

		printf("	mov	r4, #0		;r4 conta quantos numeros negativos ha\n"); 	
//positivo
		printf("	cmp	r1, #0		;se r1 for negativo \n"); 	
		printf("	sublt	r1, r1, #1	;inverte ele\n"); 	
		printf("	mvnlt	r1, r1\n"); 	
		printf("	addlt	r4, r4, #1\n"); 	
//positivo
		printf("	cmp	r2, #0		;se r2 for negativo \n");
		printf("	sublt	r2, r2, #1	;inverte ele\n"); 	
		printf("	mvnlt	r2, r2\n");
		printf("	addlt	r4, r4, #1\n"); 	

		printf("mult_loop\n");
		printf("	add	r0, r0, r1\n"); 	
		printf("	sub	r2, r2, #1\n"); 	
		printf("	cmp	r2, #0\n"); 	
		printf("	bne	mult_loop\n"); 	

		printf("	cmp	r4, #1		;se apenas um dos operandos\n"); 	
		printf("	mvneq	r0, r0		;for negativo, nega o resultado\n"); 	
		printf("	addeq	r0, r0, #1\n"); 	

		printf("	mov	pc, lr\n\n\n"); 	
	}
	return 0;

}
