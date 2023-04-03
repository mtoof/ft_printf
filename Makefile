# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtoof <mtoof@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/12 08:54:34 by mtoof             #+#    #+#              #
#    Updated: 2022/12/19 12:40:33 by mtoof            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_putchar.c ft_putstr.c ft_printf.c ft_convert.c
HEADER = ft_printf.h
FLAGS = -Wall -Werror -Wextra

all: $(NAME)
	
$(NAME): $(SRC)
	make all -C ./libft/ && mv ./libft/libft.a ./$(NAME)
	cc $(FLAGS) -c $(SRC) $(HEADER)
	ar rcs $(NAME) $(SRC:.c=.o)

clean:
	make clean -C ./libft
	/bin/rm -f $(SRC:.c=.o)

fclean: clean
	make fclean -C ./libft
	/bin/rm -f $(NAME)

re: fclean all