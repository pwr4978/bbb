package com.movie.user.service;

import com.movie.user.vo.UserVO;

public interface UserService {
	
	// ȸ������
	void insertUser(UserVO userVO) throws Exception;
	// ���̵��ߺ� Ȯ��
	int idCheck(String Id) throws Exception;
	// �α���(���� ����)
	UserVO loginUser(UserVO userVO) throws Exception;


	
}
