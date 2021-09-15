##
## EPITECH PROJECT, 2020
## undefined
## File description:
## Makefile
##

SRC = src/my_malloc.c    \
	src/calloc.c    \
	src/free.c

CFLAGS = -Wall -Wextra -W -fPIC -g

OBJ = $(SRC:.c=.o)

LIBSO = libmy_malloc.so

$(LIBSO): $(OBJ)
	gcc -g -shared -Wl,-soname,$(LIBSO) -o $(LIBSO) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(LIBSO)

all: $(LIBSO)

re: fclean all

.PHONY: all fclean clean re