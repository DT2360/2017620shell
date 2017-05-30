#include <unistd.h>
#include <stdio.h>
int main(void)
{
    int i=0;
    printf(" I am here before the for \n");
    for (i=0;i<3;i++){        
        pid_t fpid=fork();
        if(fpid==0)
            printf("son %d\n",i);
        else
        {
            printf("father %d\n",i);
            printf("father is doing.\n");
        }
    }
    printf("I am here out the for\n");
    return 0;    
}

