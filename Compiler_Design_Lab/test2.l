%{
#include<stdio.h>
%}
%%
^[A-Z][a-z]*[" "][A-Z][a-z]* {printf("\n%s is Accepted\n",yytext);}
.*  {printf("\n%s is not Accepted\n",yytext);}

%%
int yywrap(){
return 1;
}
int main()
{
printf("Enter:");
yylex();
return 0;
}
