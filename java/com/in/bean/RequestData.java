package com.in.bean;

import javax.servlet.http.Part;

public class RequestData {

	private int id;
	private String val;
	private String name;
	private String desc;
	private String search;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Part getImg() {
		return img;
	}

	public void setImg(Part img) {
		this.img = img;
	}

	private Part img;
	public String getVal() {
		return val;
	}

	public void setVal(String val) {
		this.val = val;
	}
	
}
