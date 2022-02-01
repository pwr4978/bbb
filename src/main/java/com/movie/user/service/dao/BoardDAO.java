package com.movie.user.service.dao;

import java.util.ArrayList;

import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;


public interface BoardDAO {
	
	//게시판 목록
	ArrayList <BoardVO> getAllBoard();

	// 목록 with 페이징
	ArrayList<BoardVO> getListWithPaging(Criteria cri);
	
	//목록 총 갯수
	int getTotal();
	
	//게시판 등록
	void insertBoard(BoardVO boardVO);
	
	//글 조회
	BoardVO getTelinfo(BoardVO boardVO);
	
	//게시판 수정
	void updateTelinfo(BoardVO boardVO);
	
	//게시판 삭제
	void deleteTelinfo(BoardVO boardVO);
	
	
}
