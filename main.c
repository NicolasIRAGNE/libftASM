#include <stdio.h>
#include <unistd.h>
#include <string.h>


int		ft_strlen(char *s1);

int             main()
{
        char    *s1 = "salut";
        char    s2[20] = "ca va";

        printf("%d\n", strlen(s1));
        printf("%d\n", ft_strlen(s1));
}
