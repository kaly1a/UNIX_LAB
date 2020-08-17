/*
Write a program that creates four processes. The original
process creates two children processes and then prints out
“parent”. The children process print “child1” and “child2”
respectively. The second child process creates a child process
that prints out “grandchild”. Each process should print out its
process id and the process id of its parent.
*/

#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<signal.h>
#include<unistd.h>
int main()
{
	pid_t pid1;
	pid_t pid2;
	value1=fork();
 	int flag=0;

	if ( pid1==0 )
	{
		printf("\n Child[1] --> (id : %d , parent : %d) \n",getpid(),getppid());
	}
	else if( value1 > 0 )
	{	
		wait(NULL);
		pid2=fork();

		if(pid2 == 0)
		{

			printf("\nChild[2] --> (id : %d , parent id : %d ) \n",getpid(),getppid());
			
			if(fork()==0)
			{
				flag=1;
				printf("\n Grandchild (id : %d ,parent id : %d ) \n",getpid(),getppid());
			}
	
		}
		else if(pid2 > 0)
		{
			wait(NULL);
			printf("\n Parent --> (id : %d ) \n",getpid());
		}
	
	}

	if( pid1 < 0 )
	{
		printf("\n Fork failed \n");
	}
	
	return 0;
}
