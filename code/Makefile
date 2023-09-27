test:
	flex lex.l
	bison -d syntax.y
	gcc main.c syntax.tab.c \
	-lfl -ly \
	-o paser
	./paser test.cmm