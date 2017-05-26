#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int _ft_bzero(void *s, size_t n);

void main()
{
	int size = 50;
	char *loul;
	loul = malloc(sizeof(char) * size);
	memset(loul, 1, size);
	int i = 0;
	while (i < size)
	{
		printf("%hhd ", loul[i]);
		i++;
	}
	printf("ensuite \n");
	i = 0;
	_ft_bzero(loul, size);
	while (i < size)
	{
		printf("%hhd ", loul[i]);
		i++;
	}
}
