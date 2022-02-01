package com.movie.user.service;

import java.util.ArrayList;

import com.movie.user.vo.BoardVO;
import com.movie.user.vo.Criteria;

public interface BoardService {
	//게시물 목록 조회
	ArrayList <BoardVO> getAllBoard();
	// 목록
	ArrayList<BoardVO> getList(Criteria cri);
	// 총 갯수
	int getTotal();
	//입력
	void insertBoard(BoardVO boardVO);
	//상세보기
	BoardVO getTelinfo(BoardVO boardVO);
	//수정
	void updateTelinfo(BoardVO boardVO);
	//삭제
	void deleteTelinfo(BoardVO boardVO);

}