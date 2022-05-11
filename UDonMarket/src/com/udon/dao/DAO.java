package com.udon.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("udon.totalCount");
		ss.close();
		return totalCount;
	}
	
	public static int getMyRegionCount(String region_id) {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("udon.myRegionCount", region_id);
		ss.close();
		return totalCount;
	}
	
	public static int getSearchCount(String keyword) {
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("udon.searchCount", keyword);
		ss.close();
		return totalCount;
	}
	
	public static int getRegionSearchCount(String keyword, String region_id) {
		Map<String, Object> map = new HashMap<>();
		map.put("keyword", keyword);
		map.put("region_id", region_id);
		
		SqlSession ss = DBService.getFactory().openSession();
		int totalCount = ss.selectOne("udon.regionSearchCount", map);
		ss.close();
		return totalCount;
	}
	
	public static List<PostVo> getPostList(int member_id) {
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVo> list = ss.selectList("udon.mylist", member_id);
		ss.close();
		return list;
	}
	
	public static List<PostVo> getPostList(int begin, int end) {
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVo> list = ss.selectList("udon.list", map);
		ss.close();
		return list;
	}
	
	public static List<PostVo> getRegionPostList(int begin, int end, String region_id) {
		Map<String, Object> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("region_id", region_id);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVo> list = ss.selectList("udon.regionList", map);
		ss.close();
		return list;
	}
	
	public static List<PostVo> getSearchList(int begin, int end, String keyword) {
		Map<String, Object> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("keyword", keyword);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVo> list = ss.selectList("udon.searchList", map);
		ss.close();
		return list;
	}
	
	public static List<PostVo> getRegionSearchList(int begin, int end, String keyword, String region_id) {
		Map<String, Object> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("keyword", keyword);
		map.put("region_id", region_id);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<PostVo> list = ss.selectList("udon.regionSearchList", map);
		ss.close();
		return list;
	}
	
	public static ProductImageVo getImg(int p_id) {
		SqlSession ss = DBService.getFactory().openSession();
		ProductImageVo vo = ss.selectOne("udon.img", p_id);
		ss.close();
		return vo;
	}
	
	public static PostVo getPost(int p_id) {
		SqlSession ss = DBService.getFactory().openSession();
		PostVo vo = ss.selectOne("udon.post", p_id);
		ss.close();
		return vo;
	}
	
	public static void updateMember(MemberVo upMvo, int member_id) {
		Map<String, Object> map = new HashMap<>();
		map.put("newMemberId", upMvo.getMember_id());
		map.put("newMemberPw", upMvo.getMember_pw());
		map.put("newMemberName", upMvo.getMember_name());
		map.put("newRegionId", upMvo.getRegion_id());
		map.put("searchMemberId", member_id);
		
		System.out.println("newMemberId:" + upMvo.getMember_id());
		System.out.println("newMemberPw:" + upMvo.getMember_pw());
		System.out.println("newMemberName:" + upMvo.getMember_name());
		System.out.println("newRegionId:" + upMvo.getRegion_id());
		System.out.println("searchMemberId:" + member_id);
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("udon.updateMember", map);
		ss.commit();
		ss.close();
	}
	
	public static void deleteImg(int p_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("udon.deleteImg", p_id);
		ss.close();
	}
	
	public static void deletePosts(int member_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("udon.deletePosts", member_id);
		ss.close();
	}
	
	public static void deleteMember(int member_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("udon.deleteMember", member_id);
		ss.close();
	}
}
