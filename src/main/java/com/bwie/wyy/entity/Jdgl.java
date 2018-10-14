package com.bwie.wyy.entity;

public class Jdgl {

	private Integer id;
	private Integer fid;
	private String lc;
	private Integer fjztid;
	private int fjjg;
	private String img;
	private String fname;
	private String fjztname;
	private Integer pid;
	private String name;
	private String url;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public String getLc() {
		return lc;
	}
	public void setLc(String lc) {
		this.lc = lc;
	}
	public Integer getFjztid() {
		return fjztid;
	}
	public void setFjztid(Integer fjztid) {
		this.fjztid = fjztid;
	}
	public int getFjjg() {
		return fjjg;
	}
	public void setFjjg(int fjjg) {
		this.fjjg = fjjg;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFjztname() {
		return fjztname;
	}
	public void setFjztname(String fjztname) {
		this.fjztname = fjztname;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Jdgl [id=" + id + ", fid=" + fid + ", lc=" + lc + ", fjztid=" + fjztid + ", fjjg=" + fjjg + ", img="
				+ img + ", fname=" + fname + ", fjztname=" + fjztname + ", pid=" + pid + ", name=" + name + ", url="
				+ url + "]";
	}
	
}
