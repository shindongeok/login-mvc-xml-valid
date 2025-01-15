package kr.bit.mapper;

import kr.bit.entity.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {

    //중복확인
    public Member memberDoubleCheck(String id);

    //회원가입
    public void joinInsert(Member member);

    //회원들 리스트
    public List<Member> memberList();
}
