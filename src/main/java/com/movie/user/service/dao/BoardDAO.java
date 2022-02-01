package com.movie.user.service.dao;

import java.util.ArrayList;

import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;


public interface BoardDAO {
	
	//�Խ��� ���
	ArrayList <BoardVO> getAllBoard();

	// ��� with ����¡
	ArrayList<BoardVO> getListWithPaging(Criteria cri);
	
	//��� �� ����
	int getTotal();
	
	//�Խ��� ���
	void insertBoard(BoardVO boardVO);
	
	//�� ��ȸ
	BoardVO getTelinfo(BoardVO boardVO);
	
	//�Խ��� ����
	void updateTelinfo(BoardVO boardVO);
	
	//�Խ��� ����
	void deleteTelinfo(BoardVO boardVO);
	
	
}
