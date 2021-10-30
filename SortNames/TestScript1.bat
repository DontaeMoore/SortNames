@echo off
cd SortNames
javac NameReader.java
java NameReader
fc /b sortedNames.txt SortedText.txt > nul
if errorlevel 1 (echo "The value of variable c is 15") else (echo "Unknown value") 
