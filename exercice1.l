%{
    #include <stdio.h>
%}

%%

[aeoiuyAEOIUY]+ { printf("av%s", yytext); }
.               { printf("%s, yytext"); }

%%

int main()
{
    yylex();
    return 0;
}