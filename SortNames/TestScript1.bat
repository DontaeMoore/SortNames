@echo off
cd SortNames
javac NameReader.java
java NameReader
fc /b sortedNames.txt SortedText.txt > nul
SET /A a = 5 
SET /A b = 10
SET /A c = %a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
