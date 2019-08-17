# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygarrot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/07 11:09:55 by ygarrot           #+#    #+#              #
#    Updated: 2019/08/17 12:09:54 by ygarrot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all clean fclean re $(NAME)
.SUFFIXES:

NAME = libfts.a

SRC_DIR = src
OBJ_DIR = obj
TEST_DIR = test

SRC = ft_bzero.s \
			ft_isalpha.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_islower.s \
			ft_isdigit.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_isalnum.s \
			ft_isupper.s \
			ft_strlen.s \
			ft_strnlen.s \
			ft_strlento.s \
			ft_strcat.s \
			ft_strcpy.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_min.s \
			ft_max.s \
			ft_memalloc.s \
			ft_isin.s \
			ft_abs.s \
			ft_cat.s \
			ft_strdup.s \
			ft_strdupto.s \
			ft_strndup.s \
			ft_puts.s

TEST_EXEC = test.exe

NASM_CMD = nasm -f macho64 --prefix _ -dOSX=1 -g
CC_FLAGS = -Wall -Werror -Wextra -o
INC_DIR = ./test/includes/

SRCS = $(addprefix $(SRC_DIR)/, $(SRC))

OBJS = $(addprefix $(OBJ_DIR)/, $(addsuffix .o, $(basename $(SRC))))

OBJ_FILES = $(sort $(dir $(OBJS)))

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@mkdir -p $(OBJ_FILES) || true
	@$(NASM_CMD) -o $@ $<

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME)
	@rm -f $(TEST_EXEC)

re: fclean all
