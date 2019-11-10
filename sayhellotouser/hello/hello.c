#include<hello.h>
#include<string.h>
#include<stdio.h>
#include<stdlib.h>

char *sayhello(char* username){
    char *prefix = "Hello ";
    return joinStr(prefix, username);
}

char *joinStr(char firstString[],char secondString[]){
    int size = strlen(firstString)+ strlen(secondString)+1;
    char *result= malloc(size);
    return strcat(strcat(result,firstString),secondString);
}

void logThis(char * info, char *msg){
    printf("%s %s\n",info, msg);
}