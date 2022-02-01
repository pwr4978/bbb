package com.movie.user.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.movie.user.service.UserService;
import com.movie.user.service.dao.UserDAO;
import com.movie.user.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userdao;
	SqlSession sqlSession;
	
	@Override
	@Transactional // 회원가입
	public void insertUser(UserVO userVO) throws Exception{
	
		userdao.insertUser(userVO);
		
	}
	
	@Override
	public int idCheck(String Id) throws Exception {
		
		return userdao.idCheck(Id);
	}
	
	@Override
	public UserVO loginUser(UserVO userVO) throws Exception {
		return userdao.loginUser(userVO); 
	}
	
	

	
	

}
