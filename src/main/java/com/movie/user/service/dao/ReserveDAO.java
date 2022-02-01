package com.movie.user.service.dao;

import java.util.ArrayList;
import java.util.Map;

import com.movie.user.vo.ReserveVO;

public interface ReserveDAO {
	ArrayList <ReserveVO> getAllReserve();

	void insertReserve(ReserveVO reserveVO);

	void updateSeat(ReserveVO reserveVO);
	
	void deleteReserve(Map<String, Object> param);
	
	void getPayConfirm(ReserveVO reserveVO);
	
	ArrayList <ReserveVO> getReserve(ReserveVO reserveVO);
}
