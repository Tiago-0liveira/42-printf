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
LIB_NAME = libft.a
LIB_PATH = ./libft/

SOURCES = ft_printf.c is_flag.c execute_flag.c ft_putunsigned_nbr.c

OBJECTS = $(SOURCES:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS) $(LIB_PATH)$(LIB_NAME)
	$(AR) rcs $@ $(OBJECTS)
	$(AR) q $@ $(LIB_PATH)$(LIB_NAME)

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

$(LIB_PATH)$(LIB_NAME):
	$(MAKE) -C $(LIB_PATH) all clean

clean:
	$(MAKE) -C $(LIB_PATH) clean
	rm -f $(OBJECTS)

fclean: clean
	$(MAKE) -C $(LIB_PATH) fclean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
