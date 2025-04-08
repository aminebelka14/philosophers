#  |  |  ___ \    \  |         |
#  |  |     ) |  |\/ |   _  |  |  /   _ 
# ___ __|  __/   |   |  (   |    <    __/ 
#    _|  _____| _|  _| \__,_| _|\_\ \___|
#                              by jcluzet

################################################################################
#                                     CONFIG                                   #
################################################################################

NAME        := philo
CC        := gcc
CXX         := OFF
FLAGS    := -Wall -Wextra -Werror

################################################################################
#                                 PROGRAM'S SRCS                               #
################################################################################
SRCS        :=      srcs/main/main.c \
				srcs/memory/manage_memory.c \
				srcs/parsing/parse_arg.c \
				srcs/thread/dispatch_thread.c \
				srcs/thread/philo_job.c \
				srcs/time/time_function.c \
				srcs/utils/ft_atoi.c \
				srcs/utils/str_utils.c \
				
OBJS        := $(SRCS:.c=.o)
.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}



################################################################################
#                                  Makefile  objs                              #
################################################################################


CLR_RMV		:= \033[0m
RED			:= \033[1;31m
GREEN		:= \033[1;32m
YELLOW		:= \033[1;33m
BLUE		:= \033[1;34m
CYAN 		:= \033[1;36m
RM		    := rm -f

${NAME}:	${OBJS}
			@echo "$(GREEN)Compilation ${CLR_RMV}of ${YELLOW}$(NAME) ${CLR_RMV}..."
			@${CC} ${FLAGS} -o ${NAME} ${OBJS}
			@echo "$(GREEN)$(NAME) created\033[0m ✔️"

all:		${NAME}

bonus:		all

clean:
			@ ${RM} *.o */*.o */*/*.o
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)objs ✔️"

fclean:		clean
			@ ${RM} ${NAME}
			@ echo "$(RED)Deleting $(CYAN)$(NAME) $(CLR_RMV)binary ✔️"

re:			fclean all

.PHONY:		all clean fclean re
