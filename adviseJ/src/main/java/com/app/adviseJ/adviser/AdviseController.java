package com.app.adviseJ.adviser;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdviseController {

	@RequestMapping(value = "/main/advice", method = RequestMethod.GET)
	public String getAdviceInfo(@RequestParam(required = false)  boolean success,
			@RequestParam(required = false)  boolean failed,
			Model model) {
		if (success) {
			model.addAttribute("success",
					"Dostaliśmy Twoja prosbe o rozpatrzenie wniosku.");
		}
		if (failed) {
			model.addAttribute("fail",
					"Nie udalo sie przeslac wniosku.");
		}
		return "main/sidebar-left";
	}

	@RequestMapping(value = "/main/advice", method = RequestMethod.POST)
	public ModelAndView handleFileUpload(
			@RequestParam("message") String message,
			@RequestParam("file") MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String name = file.getOriginalFilename();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File("uploaded-" + name)));
				stream.write(bytes);
				stream.close();
				System.out.println("Wrzucono plik:"+name);
				return new ModelAndView("redirect:/main/advice?success=true");
			} catch (Exception e) {
				System.out.println("Blad: "+e.getMessage());
				return new ModelAndView("redirect:/main/advice?failed=true");
			}
		} else {
			return new ModelAndView("redirect:/main/advice?failed=true");
		}
	}

}
