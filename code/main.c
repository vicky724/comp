#include <stdio.h>
//#include "synax.tab.h"


int main(int argc, char** argv){
    if (argc <= 1)
        return 1;
    FILE* f = fopen(argv[1], "r");
    if(!f){
        fprintf(stderr, "cannot open the file");
        return 1;
    }
    
    yyrestart(f);
    yypaser();
    
    return 0;
}