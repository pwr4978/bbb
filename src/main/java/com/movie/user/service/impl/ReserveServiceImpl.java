package com.movie.user.service.impl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.movie.user.service.ReserveService;
import com.movie.user.service.dao.ReserveDAO;
import com.movie.user.vo.ReserveVO;


@Service("CgvService")
@Repository
public class ReserveServiceImpl implements ReserveService { //cgvServiceImpl
	
	
	@Autowired
	private ReserveDAO reservedao;

	@Override
	@Transactional
	public ArrayList<ReserveVO> getAllReserve() {
		// TODO Auto-generated method stub
		return reservedao.getAllReserve();
	}
	public void insertReserve(ReserveVO reserveVO) {
		// TODO Auto-generated method stub
		reservedao.insertReserve(reserveVO);
	}
	public void updateSeat(ReserveVO reserveVO) {
		reservedao.updateSeat(reserveVO);
	}
	public void deleteReserve(Map<String, Object> param) {
		// TODO Auto-generated method stub
		reservedao.deleteReserve(param);
	}
	public void getPayConfirm(ReserveVO reserveVO) {
		// TODO Auto-generated method stub
		reservedao.getPayConfirm(reserveVO);
		
	}
	
	public ArrayList<ReserveVO> getReserve(ReserveVO reserveVO) {
		// TODO Auto-generated method stub
		 return reservedao.getReserve(reserveVO);
	}
	
	
}
