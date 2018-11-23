package com.goople.shopping;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class Upload {
	public boolean fileUpload(MultipartHttpServletRequest mRequest) {
		boolean isUpload = false;

		String uploadPath = "d:/uploadFile/";

		Iterator<String> iterator = mRequest.getFileNames();

		while (iterator.hasNext()) {
			String uploadFileName = iterator.next();

			MultipartFile mFile = mRequest.getFile(uploadFileName);
			String originFileName = mFile.getOriginalFilename();
			String saveFileName = originFileName;

			if (saveFileName != null && !saveFileName.equals("")) {
				if (new File(uploadPath + saveFileName).exists()) {
					saveFileName = saveFileName + "_" + System.currentTimeMillis();

				}

				try {
					mFile.transferTo(new File(uploadPath + saveFileName));
					isUpload = true;
				} catch (IllegalStateException e) {
					e.printStackTrace();
					isUpload = false;
				} catch (IOException e2) {
					e2.printStackTrace();
					isUpload = false;
				}
			} // if()
		} // while()

		return isUpload;

	}// fileUp
}
