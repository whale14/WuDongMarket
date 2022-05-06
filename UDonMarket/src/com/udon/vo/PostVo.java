package com.udon.vo;

import java.sql.Date;

public class PostVo {
	private int p_id;
	private int m_id;
	private String m_name;
	private String title;
	private String content;
	private int price;
	private String region_id;
	private Date reg_date;
		
	public PostVo() {
		super();
	}
	
	public PostVo(int p_id, int m_id, String m_name, String title, String content, int price, String region_id,
			Date reg_date) {
		super();
		this.p_id = p_id;
		this.m_id = m_id;
		this.m_name = m_name;
		this.title = title;
		this.content = content;
		this.price = price;
		this.region_id = region_id;
		this.reg_date = reg_date;
	}
	
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getRegion_id() {
		return region_id;
	}
	public void setRegion_id(String region_id) {
		this.region_id = region_id;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
}
