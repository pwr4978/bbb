package com.movie.user.service.dao;

import com.movie.user.vo.UserVO;

public interface UserDAO {
	
	// ȸ������
	void insertUser(UserVO userVO);
	// ���̵� �ߺ� Ȯ��
	int idCheck(String Id);
	// �α���
	UserVO loginUser(UserVO userVO);

	
}
