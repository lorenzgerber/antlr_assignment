#!/bin/sh

java -Xmx500M -cp antlr-4.5.3-complete.jar org.antlr.v4.Tool TuringMachine.g4
javac -classpath ~/git/antlr_assignment/antlr-4.5.3-complete.jar TuringMachine*.java
java -Xmx500M -cp "antlr-4.5.3-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig TuringMachine machine -gui TuringMachine.tex
