%{
    #include <stdio.h>
%}

%%

[ \n\t]+ { fprintf(yyout, " "); }
.   { fprintf(yyout, "%s", yytext); }

%%


int main()
{
    extern  FILE *yyin, *yyout;
    yyin = fopen("toto", "r");
    yyout = fopen("titi", "w");
    yylex();
    return 0;
}