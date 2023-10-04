all:
	java -cp antlr-3.5.3-complete-no-st3.jar org.antlr.Tool myCompiler.g
	javac -cp antlr-3.5.3-complete-no-st3.jar:. *.java
	java -cp antlr-3.5.3-complete-no-st3.jar:. myCompiler_test test1.c > test1.ll
	lli test1.ll
	java -cp antlr-3.5.3-complete-no-st3.jar:. myCompiler_test test2.c > test2.ll
	lli test2.ll
	java -cp antlr-3.5.3-complete-no-st3.jar:. myCompiler_test test3.c > test3.ll 	
	lli test3.ll
clean:
	-rm *.class
	-rm myCompilerParser.java
	-rm myCompilerLexer.java
	-rm myCompiler.tokens
	-rm *.ll