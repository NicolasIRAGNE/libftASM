#include <stdio.h>
#include <unistd.h>
#include <string.h>


int		ft_strlen(char *s1);
char	*ft_strcat(char *s1, char *s2);
int		ft_puts(char *s);

int             main()
{
        char    s1[20] = "salut";
        char    s2[20] = "ca va";

        printf("%s\n", ft_strcat(s1, s2));
        printf("%d\n", ft_puts(s1));
}
