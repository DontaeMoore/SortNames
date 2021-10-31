
javac NameReader.java
java NameReader


$fileA = "sortedNames.txt"
$fileB = "SortedText.txt"
$fileC = "SortedTextReverse.txt"

if((Get-FileHash $fileA).hash  -ne (Get-FileHash $fileB).hash)

 {"files are different"}

Else {"Files are the same"}

java NameReader Reverse

if((Get-FileHash $fileA).hash  -ne (Get-FileHash $fileC).hash)

 {"files are different"}

Else {"Files are the same"}
