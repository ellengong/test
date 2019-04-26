package com.wz.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.wz.pojo.Member;

public interface MemberMapper {
	List<Member> selectAll();
	
	int addMember(Member member);
}
