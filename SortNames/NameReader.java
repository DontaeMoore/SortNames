import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

public class NameReader {

	public static void main(String[] args) throws IOException {

		Boolean Reverse = false;

		if(args.length > 0)
    		{
        		if(args[0].equals("Reverse")){	
				Reverse = true;
			}
    		}
		
		//find file
		File file = new File("names.txt");

		Scanner scan1 = new Scanner(file);
		Scanner scan2 = new Scanner(file);
		
		//skip the first line because its empty
		scan1.nextLine();
		scan2.nextLine();
		
		//first scan simply tells us how big our array needs to be
		int nameCount = 0;
		while(scan1.hasNextLine()) {
			nameCount++;
			scan1.nextLine();
			
		}
		
		System.out.println("name count = " + nameCount);
		String[] nameArray = new String[nameCount];
		
		//second scan will grab all names and store then in String array
		int i = 0;
		while(scan2.hasNextLine()) {
			String name = scan2.nextLine();
			nameArray[i] = name;
			System.out.println(nameArray[i]);
			i++;
			
		}
		System.out.println();
		System.out.println("sorted now");
		
		//get rid of all whitespace in words
		for(int j = 0; j < 50; j++) {
			nameArray[j] = nameArray[j].replaceAll("\\s", "");
		}
		
		// array of values stored in nameArray, all thats left is to sort them :)
		Arrays.sort(nameArray, Comparator.comparingInt(String::length).thenComparing(String::compareTo));

		//print when complete
		String fileContent = "";

		if(Reverse == true){
		System.out.println("Names Printed in Reverse!");
		for(int j = 49; j >=0; j--) {
			System.out.println(nameArray[j]);
			fileContent = fileContent.concat(nameArray[j] + "\n");
		}
		}
		else {
		
		
		for(int j = 0; j < 50; j++) {
			System.out.println(nameArray[j]);
			fileContent = fileContent.concat(nameArray[j] + "\n");
		}
		}
		System.out.println("File exported to sortNames");
		
		FileWriter writer = new FileWriter("sortedNames.txt");
		writer.write(fileContent);
		writer.close();
		
		
	}

}

