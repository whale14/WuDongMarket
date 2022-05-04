package com.udon.dao;

import org.apache.ibatis.session.SqlSession;

import com.udon.mybatis.DBService;
import com.udon.vo.MemberVo;

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
}
