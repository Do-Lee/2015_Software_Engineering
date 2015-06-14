package kr.ac.mju.Login;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import kr.ac.mju.Contsants.Constants;
import kr.ac.mju.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService service;
	
	@RequestMapping(value = "/loginController/login.do", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) throws UnsupportedEncodingException, ClassNotFoundException, SQLException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userID");
		String pwd = request.getParameter("userPassword");
	
		
		ModelAndView mav = service.checkLogin(id, pwd);
		User user = service.getUser();
		
		if(mav.getModel().get("msg").equals(Constants.LoginMsg.SUCCESS.getMsg())) {
			request.getSession().setAttribute("userSession", user);
		} 
		return mav;
	}
	
	@RequestMapping(value = "/loginController/login.do", method = RequestMethod.GET)
	public ModelAndView relogin(HttpServletRequest request) throws UnsupportedEncodingException, ClassNotFoundException, SQLException {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		mav.getModel().remove("msg");
		mav.setViewName("myPage");
		return mav;
	}
	@RequestMapping(value = "/loginController/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		request.getSession().removeAttribute("userSession");

		return "redirect:/";
			
	}
}
