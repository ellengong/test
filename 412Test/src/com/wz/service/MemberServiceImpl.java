package com.wz.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wz.dao.MemberMapper;
import com.wz.pojo.Member;

@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
    IMemberService memberService;
	
	@Override
	public boolean addMember(Member member) {
		int count = memberMapper.addMember(member);
		
		if(count > 0) {
			return true;// 添加成功
		}
		
		return false;
	}
	
	@Override
	public List<Member> selectAll(){
		return memberMapper.selectAll();
	}
}


