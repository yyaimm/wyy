package com.bwie.wyy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bwie.wyy.entity.Jdgl;
import com.bwie.wyy.entity.User;
import com.bwie.wyy.service.JdglService;
import com.bwie.wyy.utils.DataGrid;
import com.bwie.wyy.utils.ExcelUtils;
import com.bwie.wyy.utils.FileDownOrUpload;
import com.bwie.wyy.utils.GloablErrorMessageEnum;
import com.bwie.wyy.utils.PageResult;

@Controller
public class JdglController {

	@Autowired
	private JdglService s;
	
	@RequestMapping("login")
	@ResponseBody
	public PageResult login(User user,HttpServletRequest request) {
		User u = s.login(user);
		if (u!=null) {
			request.getSession().setAttribute("u", u);
			return PageResult.success(null);
		} else {
			return PageResult.error(GloablErrorMessageEnum.ERROR_USER_PWD_NAME.getCode(), GloablErrorMessageEnum.ERROR_USER_PWD_NAME.getMessage());
		}
	}
	
	@RequestMapping("tobuju")
	public String tobuju() {
		return "buju";
	}
	@RequestMapping("aaa")
	public String aaa() {
		return "redirect:NewFile.html";
	}
	
	@RequestMapping("shu")
	@ResponseBody
	public List<Jdgl> shu(){
		return s.shu();
	}
	
	@RequestMapping("tolist")
	public String tolist() {
		return "list";
	}
	
	@RequestMapping("list")
	@ResponseBody
	public DataGrid list(Integer page,Integer rows) {
		DataGrid list = s.list(page,rows);
		return list;
	}
	
	@RequestMapping("toadd")
	public String toadd() {
		return "add";
	}
	
	@RequestMapping("flist")
	@ResponseBody
	public List<Jdgl> flist(){
		return s.flist();
	}
	
	@RequestMapping("fjztlist")
	@ResponseBody
	public List<Jdgl> fjztlist(){
		return s.fjztlist();
	}
	
	@RequestMapping("add")
	@ResponseBody
	public boolean add(Jdgl jdgl,MultipartFile file,HttpServletRequest request) {
		String upload = FileDownOrUpload.upload(file, request);
		jdgl.setImg(upload);
		return s.add(jdgl);
	}
	
	@RequestMapping("toupdate")
	public String toupdate() {
		return "update";
	}
	
	@RequestMapping("update")
	@ResponseBody
	public boolean update(Jdgl jdgl,MultipartFile file,HttpServletRequest request) {
		String upload = FileDownOrUpload.upload(file, request);
		jdgl.setImg(upload);
		return s.update(jdgl);
	}
	
	@RequestMapping("del")
	@ResponseBody
	public boolean del(String ids) {
		return s.del(ids);
	}
	
	@RequestMapping("daochu")
	public void daochu(HttpServletResponse response) {
		List<Jdgl> list = s.daochu();
		String columnNames [] = {"编号","房型","楼层","房间状态","房间价格","房间照片"};
		String columns [] = {"id","fname","lc","fjztname","fjjg","img"};
		ExcelUtils.exportExcel(response, list, columnNames, columns, "酒店", "酒店");
	}
	
	
}
