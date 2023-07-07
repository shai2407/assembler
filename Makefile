run:	list.o	insertMacros.o	symbolTable.o	binary.o	toSpecial.o	utils.o	validation.o	main.o
	gcc	-ansi	-Wall	-pedantic	list.o	insertMacros.o	symbolTable.o	binary.o	toSpecial.o	utils.o	validation.o	main.o	-o	run
list.o:	list.c	list.h
	gcc	-c	-ansi	-Wall	-pedantic	list.c	-o	list.o
macros.o:	insertMacros.c	insertMacros.h	utils.h
	gcc	-c	-ansi	-Wall	-pedantic	insertMacros.c	-o	insertMacros.o
symbolTable.o:	symbolTable.c	symbolTable.h
	gcc	-c	-ansi	-Wall	-pedantic	symbolTable.c	-o	symbolTable.o
binary.o:	binary.c	binary.h
	gcc	-c	-ansi	-Wall	-pedantic	binary.c	-o	binary.o
toSpecial.o:	toSpecial.c
	gcc	-c	-ansi	-Wall	-pedantic	toSpecial.c	-o	toSpecial.o
utils.o:	utils.c	utils.h
	gcc	-c	-ansi	-Wall	-pedantic	utils.c	-o	utils.o
validation.o:	validation.c	validation.h
	gcc	-c	-ansi	-Wall	-pedantic	validation.c	-o	validation.o
main.o:	main.c	binary.h	insertMacros.h
	gcc	-c	-ansi	-Wall	-pedantic	main.c	-o	main.o
