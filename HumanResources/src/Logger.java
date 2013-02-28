import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import java.util.Calendar;


public class Logger {
	static void printToFile(Exception e) {
		FileWriter fstream;
		try {
			fstream = new FileWriter("file.txt", true);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(String.format("%s : %s", Calendar.getInstance().getTime().toString(), e.toString()));
			out.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
}
