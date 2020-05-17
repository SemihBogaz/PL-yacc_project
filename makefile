trigoSAR: trigoSAR.l
	  lex trigoSAR.l
	  gcc -o trigoSAR lex.yy.c -ll

clean: 
	  rm trigoSAR lex.yy.c
