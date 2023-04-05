# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtoof <mtoof@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/27 15:50:23 by mtoof             #+#    #+#              #
#    Updated: 2023/04/05 16:57:39 by mtoof            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC_DIR = src/
vpath %.c $(SRC_DIR)
OBJ_DIR = obj/
SRC = ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c	\
		ft_isprint.c ft_memset.c ft_memcpy.c ft_memmove.c ft_strlen.c ft_tolower.c	\
		ft_toupper.c ft_memcmp.c ft_memchr.c ft_strncmp.c ft_strnstr.c ft_strrchr.c	\
		ft_strchr.c ft_strlcat.c ft_strlcpy.c ft_strdup.c ft_calloc.c ft_atoi.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_substr.c ft_strjoin.c	\
		ft_putendl_fd.c ft_strtrim.c ft_strmapi.c ft_itoa.c ft_striteri.c ft_split.c
SRC_B = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
		ft_lstmap_bonus.c
HEADER = header/
FLAGS = -Wall -Werror -Wextra

OBJ = $(SRC:%.c=$(OBJ_DIR)%.o)
OBJ_B = $(SRC_B:%.c=$(OBJ_DIR)%.o)

.PHONY: obj_dir

all: $(NAME)
	
$(NAME): $(OBJ)
	ar rcs $@ $?

$(OBJ): $(OBJ_DIR)%.o: %.c | obj_dir
	cc $(FLAGS) -I$(HEADER) -c -o $@ $<

bonus: $(OBJ_B)
	ar rcs $(NAME) $?

$(OBJ_B): $(OBJ_DIR)%.o: %.c | obj_dir
	cc $(FLAGS) -I$(HEADER) -c -o $@ $<

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

obj_dir:
	@mkdir -p $(OBJ_DIR)