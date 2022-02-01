package com.movie.user.service;

import java.util.ArrayList;

import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;

public interface BoardService {
	//�Խù� ��� ��ȸ
	ArrayList <BoardVO> getAllBoard();
	// ���
	ArrayList<BoardVO> getList(Criteria cri);
	// �� ����
	int getTotal();
	//�Է�
	void insertBoard(BoardVO boardVO);
	//�󼼺���
	BoardVO getTelinfo(BoardVO boardVO);
	//����
	void updateTelinfo(BoardVO boardVO);
	//����
	void deleteTelinfo(BoardVO boardVO);

}