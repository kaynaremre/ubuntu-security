/*
See included Makefile for compilation.
Note that you must also run the following to get the example to work and to get core dumps on crashes.
sudo sysctl kernel.randomize_va_space=0 //This is unsafe
ulimit -c unlimited
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void getMessage();
void printmsg();

int main(int argc, char* argv[]) {
    printf("In main.\n");
    printf("Calling getMessage.\n");
    getMessage();

    printf("Back in main.\n");

    printf("Exiting.\n");
    exit(EXIT_SUCCESS);
}

void getMessage() {
    char buffer[50];
    printf("Enter a message: ");
    //This is the vulnerability. Since gets doesn't do bounds checking
    //a user can enter more than 50 characters, corrupt the stack and
    //exploit the program.
    gets(buffer);
    printf("You entered: %s\n", buffer);
}

//Note that this function is never called.
void printmsg() {
    printf("welcome to buffer overflows\n");
}
