package com.app.adviseJ.adviser;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.app.adviseJ.message.dao.MessageDao;
import com.app.adviseJ.message.dao.MessageDaoImpl;
import com.app.adviseJ.message.model.Message;
import com.app.adviseJ.users.dao.UserDao;

@Controller
public class AdviseController {
	@Autowired
	private MessageDao messageDao;
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
			@RequestParam("file") MultipartFile file,HttpServletRequest request,
            HttpServletResponse response) {
		if (!file.isEmpty()) {
			try {
				  String appPath = request.getContextPath();
			        System.out.println("appPath = " + appPath);
			        // construct the complete absolute path of the file
			        String fullPath = appPath; 
				File dir = new File(appPath + File.separator + "files");
                System.out.println(dir);
                if (!dir.exists())
                    dir.mkdirs();
				byte[] bytes = file.getBytes();
				String name = file.getOriginalFilename();
				 File serverFile = new File(dir.getAbsolutePath()
	                        + File.separator + name);
				 System.out.println(serverFile);

				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				System.out.println("Wrzucono plik:"+name);
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			      String username = auth.getName();
			      System.out.println(serverFile.getName());
				Message message1 = new Message(message,serverFile.getName(),username);
				messageDao.insertMessage(message1);
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
