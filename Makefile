#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mugurel <muhammedtalhaugurel@gmai...>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/18 19:46:48 by mugurel           #+#    #+#              #
#    Updated: 2022/12/18 19:48:17 by mugurel          ###   ########.fr        #
#                                                                              #
#******************************************************************************#
LIB = 		ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c\
			ft_strlen.c \
			ft_bzero.c \
			ft_memset.c \
			ft_memcpy.c \
			ft_calloc.c \
			ft_strmapi.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_itoa.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memmove.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_strdup.c \
			ft_strjoin.c \
			ft_substr.c \
			ft_strtrim.c \
			ft_split.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_striteri.c \
			ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c

SRCS = ${addprefix ./lib/,${LIB}} \
			srcs/ft_printf.c \
			srcs/ft_printnumber.c \
			srcs/ft_printnumber2.c \
			srcs/ft_printnumber3.c \
			srcs/ft_pars.c \
			srcs/ft_extra.c \
			srcs/ft_c.c \
			srcs/ft_s.c \
			srcs/ft_x.c \
			srcs/ft_xu.c \
			srcs/ft_p.c \
			srcs/ft_u.c \

OBJS = ${SRCS:.c=.o}
SRCSB = ${addprefix ./lib/,${LIB}} \
			srcsb/ft_printf.c \
			srcsb/ft_printnumber.c \
			srcsb/ft_printnumber2.c \
			srcsb/ft_printnumber3.c \
			srcsb/ft_pars.c \
			srcsb/ft_extra.c \
			srcsb/ft_c.c \
			srcsb/ft_s.c \
			srcsb/ft_x.c \
			srcsb/ft_xu.c \
			srcsb/ft_p.c \
			srcsb/ft_u.c \

OBJS_B = ${SRCSB:.c=.o}
NAME = libftprintf.a
CC = gcc
CFLAGS =  -g
RM = rm -rf
LIBC = ar -rcs

all: ${NAME}

bonus: fclean ${OBJS_B}
	@${LIBC} ${NAME} ${OBJS_B}

${NAME}: ${OBJS}
	@${LIBC} ${NAME} ${OBJS}

.c.o:
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	@${RM} ${OBJS} ${OBJS_B}

fclean: clean
	@${RM} ${NAME} ${bonus}

re: fclean all

.PHONY: all bonus clean fclean re .c.o
