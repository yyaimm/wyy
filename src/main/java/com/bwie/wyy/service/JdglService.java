package com.bwie.wyy.service;

import java.util.List;

import com.bwie.wyy.entity.Jdgl;
import com.bwie.wyy.entity.User;
import com.bwie.wyy.utils.DataGrid;

public interface JdglService {

	User login(User user);

	List<Jdgl> shu();

	DataGrid list(Integer page, Integer rows);

	List<Jdgl> flist();

	List<Jdgl> fjztlist();

	boolean add(Jdgl jdgl);

	boolean update(Jdgl jdgl);

	boolean del(String ids);

	List<Jdgl> daochu();

}
