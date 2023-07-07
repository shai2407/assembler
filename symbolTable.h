#include <stdio.h>

#ifndef _symbolTable_H_
#define _symbolTable_H_

#define CUT "\t ,\n"
#define MAX_LABEL_LENGTH 31
#define MAX_LINE_LENGTH 81

/*an object that holds all info of a lable and a pointer to the next(implementation of linked list)*/
typedef struct symbolLink{
	char name[MAX_LABEL_LENGTH];
	int adress;
	int ext; 
	int ent;
	int times;
	struct symbolLink *next;

}symbolLink;

void freeTableList(symbolLink *head);

symbolLink *symboleTableCreat(FILE *filePointer);
symbolLink *addSymbol(symbolLink *head, char lableName[]);
struct symbolLink *findSymbol(struct symbolLink *head, char lableName[]);

#endif
