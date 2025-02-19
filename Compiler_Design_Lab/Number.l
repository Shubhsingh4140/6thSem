%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("Integer";}
[0-9]*[.][0-9]+ {printf("Floating Point");}
.*  {printf("Inavlid");}
%%
int yywrap(){
return 0;
}
int main(){
printf("Enter input");
yylex();
return 0;
}
