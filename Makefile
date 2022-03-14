# Project: libMC33
NAME     = libMC33
CC       = gcc
SRC      = ./source/$(NAME).c
OBJ      = $(NAME).o
AR       = ar
RANLIB   = ranlib
INCS     = 
BIN      = ./lib/$(NAME).a
CFLAGS   = $(INCS) -Ofast -m64 -Wall -Wextra -funroll-loops
RM       = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after

clean: clean-custom
	$(RM) $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(AR) r $(BIN) $(OBJ)
	$(RANLIB) $(BIN)

$(OBJ): $(SRC)
	$(CC) -c $(SRC) -o $(OBJ) $(CFLAGS)
