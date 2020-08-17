/*
Write a C program in UNIX platform to create a child process
using fork() system call and make the child process to compute
the Factorial of a given number and make the parent process to
compute the multiplication table of a given range.
*/
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>                                                                                                                                                                                          #include <sys/types.h>
#include <string.h>
#include <stdlib.h>


int main(int argc , char *argv[] )
{
        pid_t pid;


        if (argc == 3)
        {
                printf("\nArgument missing or exceeding\n");
                exit(0);
        }

        if ( atoi ( argv[1] ) <0 )
        {
                printf("\nNegative number entered %d\n", atoi(argv[1]));
                exit(0);
        }

        pid=fork();

        if ( pid<0 )
        {
                printf("\nFork Failed!!!\n");
                exit(0);
        }

        else if ( pid==0 )
        {       printf("Child Process");
                //Child Process
                int res = 0, i, j, k = 2, n;

                // atoi converts string to integer
                n = atoi(argv[1]);
                int arr[n],sum[n];

                arr[0] = 1;
         // generating factorial series
                for (i=1 ; i<n; i++)
                {
                        arr[i] = arr[i-1]*k;
                        k++;
                }                                                                                                                                                                                                 >
                for (i=0; i<n; i++)
                {
                        printf(" %d ", arr[i]);
                }

                exit(0);
        }

        // parent process
        else
        {
                wait(NULL);

                // waiting for child process to end
                printf(" \nChild process is Executed\n");
                if ( atoi ( argv[3] ) - atoi ( argv[2] ) <0)
                {
                        printf("\nNegative number entered\n");
                        exit(0);
                }
                else
                {
                        int l;
                        for(l = atoi ( argv [2] ); l <= atoi ( argv [3] ); l++)
                        {
                            printf("\n%d * %d = %d\n", atoi ( argv [1] ), l, l * atoi ( argv [1] ) );
                        }
                }
        }
}
