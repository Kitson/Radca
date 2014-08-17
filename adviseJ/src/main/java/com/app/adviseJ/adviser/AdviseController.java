package com.app.adviseJ.adviser;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdviseController {
	
	@RequestMapping(value="/advise", method =RequestMethod.GET)
	public String getAdviceInfo(){
		return "advise";
	}
	
	 @RequestMapping(value="/advise", method=RequestMethod.POST)
	    public String handleFileUpload(@RequestParam("name") String name,
	            @RequestParam("file") MultipartFile file){
	        if (!file.isEmpty()) {
	            try {
	                byte[] bytes = file.getBytes();
	                BufferedOutputStream stream =
	                        new BufferedOutputStream(new FileOutputStream(new File("uploaded-"+name)));
	                stream.write(bytes);
	                stream.close();
	                name = file.getName();
	                return "/adviseSuccess";
	            } catch (Exception e) {
	                return "/adviseFail";
	            }
	        } else {
	            return "/adviseFail";
	        }
	    }
	 
}
	