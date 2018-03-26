package kr.co.bit.day4;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

public class FileDataService {
	public Date getDateTime() {
		Date date = null;
		return date;
	}

	public ArrayList<StudentVO> getFileData(String path) throws IOException {
		ArrayList<StudentVO> list = new ArrayList<StudentVO>();
		File file = new File(path);
		if (file.exists()) {
			System.out.println(file.getName());
			FileReader fr = new FileReader(file);
			BufferedReader br = new BufferedReader(fr);
			String line = null;
			while ((line = br.readLine()) != null) {
				list.add(this.splitData(line));
				// System.out.println(line);
			}
			br.close();
			fr.close();

		}
		return list;
	}

	public StudentVO splitData(String line) {
		StudentVO vo = null;
		return vo;

	}
}
