
javac NameReader.java
java NameReader


$fileA = "sortedNames.txt"

$fileC = "SortedTextReverse.txt"

if((Get-FileHash $fileA).hash  -ne (Get-FileHash $fileC).hash)

 {"files are different"}

Else {"Files are the same"}