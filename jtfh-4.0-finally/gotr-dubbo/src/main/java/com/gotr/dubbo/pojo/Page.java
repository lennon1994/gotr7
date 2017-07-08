package com.gotr.dubbo.pojo;


public class Page {
	private int countrow;

	private int countpage;

	private int rowperpage;

	private int thispage;

	private int prepage;

	private int nextpage;

	public int getCountrow() {
		return countrow;
	}

	public void setCountrow(int countrow) {
		this.countrow = countrow;
	}

	public int getCountpage() {
		return countpage;
	}

	public void setCountpage(int countpage) {
		this.countpage = countpage;
	}

	public int getRowperpage() {
		return rowperpage;
	}

	public void setRowperpage(int rowperpage) {
		this.rowperpage = rowperpage;
	}

	public int getThispage() {
		return thispage;
	}

	public void setThispage(int thispage) {
		this.thispage = thispage;
	}

	public int getPrepage() {
		return prepage;
	}

	public void setPrepage(int prepage) {
		this.prepage = prepage;
	}

	public int getNextpage() {
		return nextpage;
	}

	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}
}
