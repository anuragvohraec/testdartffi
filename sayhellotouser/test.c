#include<stdio.h>
#include<string.h>

int main(void){
    char *result ="Anurag";
    char *surname = " Vohra";
    strcat(result,surname);
    printf("%s",result);
}