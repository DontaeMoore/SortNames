@echo off
cd SortNames
javac NameReader.java
java NameReader

fc /b sortedNames.txt SortedText.txt > nul
if errorlevel 1 goto files_differ
echo they are the same

:files_differ
echo they are not the same


java NameReader Reverse

fc /b sortedNames.txt SortedTextReverse.txt > nul
if errorlevel 1 goto files_differ
echo referse are the same

:files_differ
echo reverse are not the same
echo.
PAUSE
