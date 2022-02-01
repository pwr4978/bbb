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
	//게시물 목록 조회
	public ArrayList <BoardVO> getAllBoard(){
		return boardkaja.getAllBoard();
	}
	//목록 페이지
	@Override
	public ArrayList<BoardVO> getList(Criteria cri) {
		return boardkaja.getListWithPaging(cri);
	}
	//총 갯수
	public int getTotal() {
		return boardkaja.getTotal();
	}
	//입력
	public void insertBoard(BoardVO boardVO) {
		boardkaja.insertBoard(boardVO);
	}
	//상세보기
	public BoardVO getTelinfo(BoardVO boardVO) {
		return boardkaja.getTelinfo(boardVO);
	}
	//수정
	public void updateTelinfo(BoardVO boardVO) {
		boardkaja.updateTelinfo(boardVO);
	}
	//삭제
	public void deleteTelinfo(BoardVO boardVO) {
		boardkaja.deleteTelinfo(boardVO);
	}
}
