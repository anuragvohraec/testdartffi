#include<sayhellotouser.h>
#include<hello.h>
#include<string.h>
#include<stdlib.h>

char* sayhellotouser(char username[]){
    char postfix[]=" Good Morning!";
    char *prefix = sayhello(username);
    char *result = joinStr(prefix,postfix);
    return result;
}

// int main(void){
//     char *firstname = "Anurag";
//     char *lastName ="Vohra";
//     char *username =joinStr(firstname, lastName);
//     char *result = sayhellotouser(username);
//     logThis("From main:", result);
//     free(result);
// }
