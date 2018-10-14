package com.bwie.wyy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bwie.wyy.entity.Jdgl;
import com.bwie.wyy.entity.User;

public interface JdglMapper {

	User login(User user);

	List<Jdgl> shu();

	List<Jdgl> list();

	List<Jdgl> flist();

	List<Jdgl> fjztlist();

	boolean add(Jdgl jdgl);

	boolean update(Jdgl jdgl);

	boolean del(@Param("ids")String ids);

}
