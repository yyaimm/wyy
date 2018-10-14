package com.bwie.wyy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bwie.wyy.entity.Jdgl;
import com.bwie.wyy.entity.User;
import com.bwie.wyy.mapper.JdglMapper;
import com.bwie.wyy.service.JdglService;
import com.bwie.wyy.utils.DataGrid;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class JdglServiceImpl implements JdglService {

	@Autowired
	private JdglMapper m;
	
	public User login(User user) {
		return m.login(user);
	}
	
	public List<Jdgl> shu() {
		return m.shu();
	}
	
	public DataGrid list(Integer page, Integer rows) {
		PageHelper.startPage(page, rows);
		List<Jdgl> list = m.list();
		PageInfo<Jdgl> pageInfo = new PageInfo<Jdgl>(list);
		return new DataGrid(pageInfo.getTotal(), pageInfo.getList());
	}
	
	public List<Jdgl> flist() {
		return m.flist();
	}
	
	public List<Jdgl> fjztlist() {
		return m.fjztlist();
	}
	
	public boolean add(Jdgl jdgl) {
		return m.add(jdgl);
	}
	
	public boolean update(Jdgl jdgl) {
		return m.update(jdgl);
	}
	
	public boolean del(String ids) {
		return m.del(ids);
	}
	
	public List<Jdgl> daochu() {
		return m.list();
	}
}
