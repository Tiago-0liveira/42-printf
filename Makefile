# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tiagoliv <tiagoliv@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/18 23:02:44 by tiagoliv          #+#    #+#              #
#    Updated: 2023/05/25 13:50:44 by tiagoliv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SOURCES = ft_printf.c execute_flag.c ft_putunsigned_nbr.c ft_putchar.c ft_puthexa.c ft_putnbr.c ft_putstr.c ft_putptr.c ft_printlong.c

OBJECTS = $(SOURCES:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
TEST_FILE = test.c
TEST_OUT = test.out

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) $(NAME) $(OBJECTS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean clean_test
	rm -f $(NAME)

compile_test: $(NAME)
	$(CC) $(CFLAGS) $(TEST_FILE) $(NAME) -o $(TEST_OUT)
	./$(TEST_OUT)

clean_test:
	rm -f $(TEST_OUT)

test: all compile_test fclean


re: fclean all

.PHONY: all clean fclean re
