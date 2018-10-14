package com.bwie.wyy.utils;
/**
 * 前后台交互的规范
 * @author wyy
 *
 */
public class PageResult {

	private Integer code;//响应状态码
	private boolean status;//业务执行是否成功
	private String msg;//提示信息
	private Object data;//传给前台的数据
	public PageResult() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PageResult(Integer code, boolean status, String msg, Object data) {
		super();
		this.code = code;
		this.status = status;
		this.msg = msg;
		this.data = data;
	}
	
	public static PageResult success(Object data) {
		
		return new PageResult(200, true, "ok", data);
	}
	public static PageResult error(Integer code,String msg) {
		
		return new PageResult(code, false, msg, null);
	}
	
	
	
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
}
