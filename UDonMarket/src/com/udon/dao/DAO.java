package com.udon.dao;

import org.apache.ibatis.session.SqlSession;

import com.udon.mybatis.DBService;
import com.udon.vo.MemberVo;
import com.udon.vo.PostVo;
import com.udon.vo.ProductImageVo;

public class DAO {
	public static int insertMember(MemberVo mvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("udon.insertMember", mvo);
		ss.close();
		return result;
	}
	public static MemberVo selectMemberWhereMemberId(int member_id) {
		SqlSession ss = DBService.getFactory().openSession();
		MemberVo mvo = ss.selectOne("udon.selectMemberWhereMemberId", member_id);
		ss.close();
		return mvo;
	}
	
	public static int selectMaxPidFromPost(int member_id) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("udon.selectMaxPidFromPost", member_id);
		ss.close();
		return result;
	}
	
	public static void insertPost(PostVo pvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("udon.insertPost", pvo);
		ss.close();
	}
	
	public static void insertProductImage(ProductImageVo ivo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("udon.insertProductImage", ivo);
		ss.close();
	}
}
