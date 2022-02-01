package com.movie.user;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movie.user.service.BoardService;
import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;
import com.movie.user.vo.PageMakerVO;
import com.movie.user.service.UserService;
import com.movie.user.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	//@Resource(name="UserService")
	//private UserService userService;
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	//목록
	@RequestMapping(value="/boardAll.do")
	public String boardAll(Criteria cri, Model model, HttpSession session) throws Exception{
		
		//ArrayList <BoardVO> alist = boardService.getAllBoard();
		
		//model.addAttribute("alist", alist);
		model.addAttribute("alist", boardService.getList(cri));

		int total = boardService.getTotal();
        
        PageMakerVO pageMake = new PageMakerVO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
		
		return "boardAll";
	}
	

	//-----------------------------------------------------------------------
	
	
	
	//-----------------------------------------------------------------------
	//입력
  	@RequestMapping(value="/boardInsertForm.do")
  	public String boardInsertForm(@ModelAttribute("boardVO") BoardVO boardVO,
  										Model model, HttpSession session) throws Exception {
  		
  		Object loginInfo = session.getAttribute("userID");
  		
  		if(loginInfo == null) {
  			model.addAttribute("msg", false);
  		}
  		return "boardInsertForm";
  	}
  	
  	@RequestMapping(value = "/jido")
    public String jido() {
    
       return "jido";
    }
	
	@RequestMapping(value="/boardInsert.do")
	public String boardInsert(@ModelAttribute("boardVO") BoardVO boardVO,
										Model model, HttpSession session) {
		boardService.insertBoard(boardVO);
		return "redirect:/boardAll.do";
	}
	//상세보기
	@RequestMapping(value="/getTelinfo.do")
	public String boardGetTelinfo(@ModelAttribute("cri") Criteria cri,@ModelAttribute("boardVO") BoardVO boardVO, Model model, HttpSession session) {
		
		Object loginInfo = session.getAttribute("userID");
  		
  		if(loginInfo == boardVO.getId()) {
  			model.addAttribute("msg2", false);
  		}
		
		boardService.getTelinfo(boardVO);
		
		return "boardGetTelinfo";
	}
	//수정
	@RequestMapping(value="updateTelinfo.do")
	public String boardUpdateinfo(@ModelAttribute("cri") Criteria cri,@ModelAttribute("boardVO") BoardVO boardVO, Model model, HttpSession session) {
		
		
		boardService.updateTelinfo(boardVO);
		
		return "redirect:/boardAll.do";
	}
	//삭제
	@RequestMapping("/deleteTelinfo.do")
	public String boardDeleteTelinfo(BoardVO boardVO, Model model) {
		boardService.deleteTelinfo(boardVO);
		
		return "redirect:/boardAll.do";
	}
	

}
	
