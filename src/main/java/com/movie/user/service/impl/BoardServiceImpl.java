package com.movie.user.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.movie.user.service.BoardService;
import com.movie.user.service.dao.BoardDAO;
import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;


@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardkaja;
	
	@Override
	@Transactional
	//�Խù� ��� ��ȸ
	public ArrayList <BoardVO> getAllBoard(){
		return boardkaja.getAllBoard();
	}
	//��� ������
	@Override
	public ArrayList<BoardVO> getList(Criteria cri) {
		return boardkaja.getListWithPaging(cri);
	}
	//�� ����
	public int getTotal() {
		return boardkaja.getTotal();
	}
	//�Է�
	public void insertBoard(BoardVO boardVO) {
		boardkaja.insertBoard(boardVO);
	}
	//�󼼺���
	public BoardVO getTelinfo(BoardVO boardVO) {
		return boardkaja.getTelinfo(boardVO);
	}
	//����
	public void updateTelinfo(BoardVO boardVO) {
		boardkaja.updateTelinfo(boardVO);
	}
	//����
	public void deleteTelinfo(BoardVO boardVO) {
		boardkaja.deleteTelinfo(boardVO);
	}
}
