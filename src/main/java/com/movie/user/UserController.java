package com.movie.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.tools.DocumentationTool.Location;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.user.service.UserService;
import com.movie.user.vo.UserVO;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name = "userService") 
	private UserService userService; 
	@Autowired
    private JavaMailSender mailSender;
	
	// 밑에 순서대로 컨트롤러 작성
	// join = 회원가입 페이지
	// join.do = 회원가입 실행
	// login = 로그인 페이지
	// login.do = 로그인 실행
	
	// 나중에 logger.info(); 이거 필요없으면 싹다 지워버리기
	// 어떤 과정에서 오류가 났나 잡기는 쉽겠지만 오류처리를 좀 매끄럽게 하면 불필요할수도 
	// 오류처리 만들때 throws Exception지워보자 그리고 밑에거 선택 원래 컨트롤러에서 이런거 처리하는거 아닐텐데 잘몰름

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "home";
	}
	
	// 페이지이동같은건 필요시 다른 것(다른 컨트롤러)들에도 추가 
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/joinForm.do", method = RequestMethod.GET)
	public String joinFome(@ModelAttribute("UserVO") UserVO userVO,
									Model model) throws Exception {
			
		return "join";
	}
	
	// 회원가입
	@RequestMapping(value = "/sign_up.do", method = RequestMethod.POST)
	public String insertUser(@ModelAttribute("userVO") UserVO userVO,
	        Model model) throws Exception {
		
		userService.insertUser(userVO);
		// 이쪽에 오류가 안나게끔 join페이지에서 확실히 해줘야함
		return "redirect:/";
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/IdCheck", method = RequestMethod.POST)
	@ResponseBody // 이게있어야 다시 결과를 회원가입 페이지로 반환 
	public String IdCheck(String Id) throws Exception{
			
		
		int result = userService.idCheck(Id);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
			
	}
	
	/* 이메일 인증 */
    @RequestMapping(value="/mailCheck", method= {RequestMethod.GET})
    @ResponseBody
    public String mailCheckGET(String email) throws Exception{
                
        // 인증번호
        Random random = new Random();
        int ranNum = random.nextInt(876543) + 123456;
        
        // 이멜보내기
        String setFrom = "movietht5@gmail.com";
        String toMail = email;
        String title = "MOVIE 회원가입 인증번호 입니다."; 
        String content = 
                "<br>" + 
                "인증 번호는 " + ranNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호칸에 입력해주세요~";
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        // 뷰로 반환하기 위해 
        String num = Integer.toString(ranNum);
        
        return num;
    }
    
	
	//로그인 페이지 이동
	@RequestMapping(value = "/loginForm.do", method = RequestMethod.GET)
	public String loginGo(@ModelAttribute("userVO") UserVO userVO,
	        Model model) throws Exception {

		return "login2";
	}
	
    @RequestMapping(value="login.do", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, UserVO userVO, RedirectAttributes rttr) throws Exception{
        
    	HttpSession session = request.getSession();
        
    	UserVO loginVo = userService.loginUser(userVO);
    	
    	
    	 if(loginVo == null) {   
    		
            	 int result = 0;
                 rttr.addFlashAttribute("result", result);
                 return "redirect:/loginForm.do";  
                
             
         }
         
         session.setAttribute("user", loginVo);       
         
         
         return "redirect:/";
         
    }
    
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logout(HttpServletRequest request) throws Exception{
    	
    	HttpSession session = request.getSession();
    	session.invalidate();
        
        return "redirect:/";
        
    }


}
