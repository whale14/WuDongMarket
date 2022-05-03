package com.udon.dao;

import org.apache.ibatis.session.SqlSession;

import com.udon.mybatis.DBService;
import com.udon.vo.MemberVo;

public class DAO {
	public static int insertMember(MemberVo mvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("udon.insertMember");
		ss.close();
		return result;
	}
}
