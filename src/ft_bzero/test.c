#include <stdio.h>
#include <string.h>

void    ft_putstr(char *str);
void    _ft_bzero(void *data, int size);

int             main()
{
        int             tab[1000000];
        int             i;

        i = 0;
        while (i < 100000)
        {
               _ft_bzero(tab, 1000000);
                i++;
        }
}
