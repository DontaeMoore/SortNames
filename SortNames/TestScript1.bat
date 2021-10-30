
@echo off
dir
cd SortNames
javac NameReader.java
java NameReader
fc /b sortedNames.txt SortedText.txt > nul

if errorlevel 1  
    echo The Sorted text in sortedNames does not match the text from our already sorted text in SortedText!
  else 
    echo The Sorted text in sortedNames matches the text from our already sorted text in SortedText!


java NameReader Reverse
fc /b sortedNames.txt SortedTextReverse.txt > nul

if errorlevel 1 (
    echo The Reversed Sorted text in sortedNames does not match the text from our already reverse sorted text in SortedTextReverse!
 )  else (
    echo The Reversed Sorted text in sortedNames matches the text from our already reverse sorted text in SortedTextReverse!
)
echo.
PAUSE
