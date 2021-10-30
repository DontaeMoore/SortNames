
@echo off
dir
cd SortNames
javac NameReader.java
java NameReader
fc /b sortedNames.txt SortedText.txt > nul

if errorlevel 1 ( 
echo The Sorted text in sortedNames does not match the text from our already sorted text in SortedText!
)
echo yo
PAUSE
