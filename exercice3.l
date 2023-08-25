%{
    #include <stdio.h>
    int i = 0;
%}

%%
[^ \t\n]+ { i++; }
.|n {}
%%

int main(int argc, char * argv[])
{
    extern  FILE *yyin;
    yyin = fopen(argv[1], "r");
    yylex();
    printf("words = %d", i);
    return 0;
}