package com.movie.user.service.dao;

import com.movie.user.vo.UserVO;

public interface UserDAO {
	
	// 회원가입
	void insertUser(UserVO userVO);
	// 아이디 중복 확인
	int idCheck(String Id);
	// 로그인
	UserVO loginUser(UserVO userVO);

	
}
