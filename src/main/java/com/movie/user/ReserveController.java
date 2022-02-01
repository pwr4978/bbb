package com.movie.user;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movie.user.service.ReserveService;
import com.movie.user.vo.ReserveVO;

/**
 * Handles requests for the application home page.
 */

@Controller
public class ReserveController {
	
	@Resource(name="CgvService")
	private ReserveService reserveservice;
	
	@RequestMapping(value = "reservepage")
	public String reservepage() {
		
		

		
		return "reserveInsert";
	}
	
	@RequestMapping(value = "reserveCancel")
	public String reserCancelConfrim() {
		
		return "reserveCancelConfirm";
	}
	
	@RequestMapping(value= "/reserveAll.do")
	public String reserveAll(@ModelAttribute("reserveVO") ReserveVO reserveVO,
			HttpServletRequest request, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		
		reserveservice.insertReserve(reserveVO);
		
		ArrayList <ReserveVO> alist = reserveservice.getAllReserve();
		
		model.addAttribute("alist",alist);
		
		return "reserveSeat";
	}
		
		
	
	@RequestMapping(value = "/reserveSeat.do")
	public String reserveSeat(@ModelAttribute("reserveVO") ReserveVO reserveVO,
										Model model) throws ClassNotFoundException,SQLException {
		
		reserveservice.updateSeat(reserveVO);
		
		ArrayList <ReserveVO> alist = reserveservice.getAllReserve();
		
		model.addAttribute("alist",alist);
		
		return "reserveConfirm";
		
	}
	
	
	
	@RequestMapping(value = "/reserveSucess.do")
	public String deleteReserve(@ModelAttribute("cgvVO") ReserveVO reserveVO,
										Model model) {
	
		ArrayList <ReserveVO> alist = reserveservice.getAllReserve();
		
		model.addAttribute("alist",alist);
		
		
		
		return "payConfirm";
		
	}
	
	@RequestMapping(value = "/gopayConfirm")
	public String payConfirm( ) {
	
		
		return "payConfirm";
	}
	
	@RequestMapping(value = "/reserveCancel.do")
	public String deleteReserve(@RequestParam Map<String,Object> param,
										Model model) {
	
		
		reserveservice.deleteReserve(param);
		
		
		return "reserveInsert";
		
	}
	
	@RequestMapping(value = "/returnInsert")
	public String returnInsert() {
		
		return "reserveInsert";
	}
	
	@RequestMapping(value = "/mypage.do")
	public String mypage(Model model,@ModelAttribute("reserveVO")ReserveVO reserveVO,HttpServletRequest request) throws Exception  {
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("userID");
		reserveVO.setUsername(username);
	    ArrayList <ReserveVO> alist = reserveservice.getReserve(reserveVO);
	    
	    model.addAttribute("alist", alist);

	    return "myPage"; 
	}
}
		
	
