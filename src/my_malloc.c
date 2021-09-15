/*
** EPITECH PROJECT, 2021
** my_malloc
** File description:
** malloc
*/

#include "malloc.h"
#include "string.h"

void *my_malloc(size_t size)
{
    void *q;

    printf("q : %ld \n", q);
    q = sbrk(sizeof (char) * size);
    printf("q : %ld \n", q);
    if(q == (void *)-1){
        return NULL;
    }
    return q;
}

int main()
{
    char *p;

    printf("p : %ld \n", p);
    p = my_malloc(6);
    printf("p : %ld \n", p);
    p = strcpy(p, "Hello");
    printf("p : %ld \n%s\n", p, p);
}