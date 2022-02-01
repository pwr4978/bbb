package com.movie.user.service;

import com.movie.user.vo.UserVO;

public interface UserService {
	
	// 회원가입
	void insertUser(UserVO userVO) throws Exception;
	// 아이디중복 확인
	int idCheck(String Id) throws Exception;
	// 로그인(추후 수정)
	UserVO loginUser(UserVO userVO) throws Exception;


	
}
