package com.bwie.wyy.utils;

import java.util.List;

public class DataGrid {

	private Long total;
	
	private List<?> rows;

	public DataGrid() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DataGrid(Long total, List<?> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	
	
}
