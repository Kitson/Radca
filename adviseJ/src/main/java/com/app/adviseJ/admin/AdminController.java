package com.app.adviseJ.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.adviseJ.message.dao.MessageDao;
import com.app.adviseJ.message.dao.MessageDaoImpl;
import com.app.adviseJ.message.model.Message;

@Controller
@RequestMapping(value="/admin/")
public class AdminController {
	@Autowired
	private MessageDao messageDao;
	@RequestMapping(value="/",method = RequestMethod.GET)
	public ModelAndView main()
	{
		ModelAndView model =  new ModelAndView("admin/main");
		return model;
			
	}
	@RequestMapping(value="messages",method = RequestMethod.GET)
	public ModelAndView getMessage()
	{
		ModelAndView model =  new ModelAndView("admin/messages");
		List <Message> messageList = messageDao.getMessages();
		model.addObject("messageList",messageList);
		return model;
			
	}
}
