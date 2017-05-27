#include <stdio.h>
#include <unistd.h>
#include <string.h>


char    *_ft_strcat(char *s1, char *s2);

int             main()
{
        char    s1[20] = "salut";
        char    s2[20] = "ca va";

        printf("%s\n",_ft_strcat(s1, s2));
}
