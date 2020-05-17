%{
#include <stdio.h>
#include <stdlib.h>
#include "trigoSAR.h"
#include "y.tab.h"
#include <math.h>
int yylex();
void yyerror(const char *s);

%}
digit [0-9]+

%%
\![a-zA-Z]+[A-Za-z0-9_]*{1,256}   	{yylval.sIndex = *yytext - 'a';return IDENTIFIER;}

{digit}                             {yylval.iValue = atoi(yytext);return INTEGER;}
{digit}+\.{digit}                   {return FLOAT;}
[a-zA-z]+                           {return STRING;}
                          
[+]                               {return '+';}
[-]                               {return '-';}
[/]                               {return '/';}
[*]                               {return '*';}

">="                              {return GE;}
"<="                              {return LE;}
"=="                              {return EQ;}
"!="                              {return NE;}
[-()<>=+*/;{}.]                   {return *yytext;}

^if$                              {return IF;}
^else$                            {return ELSE;}
^while$                           {return WHILE;}
^for$                             {return FOR;}
 

^sin$                           {return SIN;}
^cos$                           {return COS;}
^tan$                           {return TAN;}
^cot$                           {return COT;}

^PI$		    	          {return 3.14;}

^arcsin$                        {return ARCSIN;} 
^arccos$ 	                  {return ARCCOS;} 
^arctan$ 	                  {return ARCTAN;} 
^arccot$ 	                  {return ARCCOT;}

[\t\n] |
" " 				  {};
. 				  {printf(" Unexpected Input Type! ");}




%%


