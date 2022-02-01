package com.movie.user.service;

import java.util.ArrayList;
import java.util.Map;

import com.movie.user.vo.ReserveVO;

public interface ReserveService {
	ArrayList <ReserveVO> getAllReserve();

	void insertReserve(ReserveVO reserveVO);
	
	void updateSeat(ReserveVO reserveVO);
	
	void deleteReserve(Map<String, Object> param);

	void getPayConfirm(ReserveVO reserveVO);

	ArrayList <ReserveVO> getReserve(ReserveVO reserveVO);
}
