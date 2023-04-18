# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtoof <mtoof@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/12 08:54:34 by mtoof             #+#    #+#              #
#    Updated: 2023/04/05 17:21:16 by mtoof            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC_DIR = src/
OBJ_DIR = obj/

vpath %.c $(SRC_DIR)

SRC = ft_putchar.c ft_putstr.c ft_printf.c ft_convert.c
HEADER = header/
FLAGS = -Wall -Werror -Wextra
LIBFT_LIB = ./libft/libft.a 

OBJ = $(SRC:%.c=$(OBJ_DIR)%.o)

.PHONY: obj_dir

all: $(NAME)

$(NAME): $(OBJ)
	make all -C ./libft/
	ar rcs $@ $? $(LIBFT_LIB)

$(OBJ): $(OBJ_DIR)%.o: %.c | obj_dir
	cc $(FLAGS) -I$(HEADER) -c -o $@ $<

clean:
	make clean -C ./libft
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(LIBFT_LIB)
	rm -f $(NAME)

re: fclean all

obj_dir:
	@mkdir -p $(OBJ_DIR)
