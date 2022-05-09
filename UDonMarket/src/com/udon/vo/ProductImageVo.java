package com.udon.vo;

public class ProductImageVo {
	private String file_name;
	private String ori_name;
	private int p_id;
	
	
	public ProductImageVo() {
		super();
	}
	
	public ProductImageVo(String file_name, String ori_name, int p_id) {
		super();
		this.file_name = file_name;
		this.ori_name = ori_name;
		this.p_id = p_id;
	}

	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getOri_name() {
		return ori_name;
	}
	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	@Override
	public String toString() {
		return "ProductImageVo [file_name=" + file_name + ", ori_name=" + ori_name + ", p_id=" + p_id + "]";
	}
	
}
