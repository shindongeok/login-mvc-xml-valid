package kr.bit.controller;

import kr.bit.entity.Member;
import kr.bit.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberMapper memberMapper;


    @RequestMapping("/main")
    public String main(){
        return "main";
    }


    @GetMapping("join")
    public String join(){
        return "join";
    }

//    @PostMapping("/login")
//    public String login(String id, String pw, Model model, HttpSession session){
//        // 서비스에서 로그인 처리
//        Member member = memberMapper.login(id, pw);
//
//        if (member != null && member.getPwd1().equals(pw)) { // 비밀번호 비교
//            // 로그인 성공 시, 세션에 사용자 정보 저장
//            session.setAttribute("loggedInMember", member);
//            return "memberList";  // 로그인 성공 후 리다이렉트 (예: 홈 페이지)
//        } else {
//            // 로그인 실패 시
//            model.addAttribute("error", "아이디나 비밀번호가 틀렸습니다.");
//            return "main";  // 로그인 페이지로 돌아감
//        }
//    }


    @GetMapping("/error")
    public String error(){
        return "error";
    }


    @RequestMapping("/memberDoubleCheck")
    public @ResponseBody int memberDoubleCheck(@RequestParam("memberID") String memberID){
        Member member=memberMapper.memberDoubleCheck(memberID);
        if(member!=null || memberID.equals("")){
            return 0;
        }
        return 1;
    }

    @PostMapping("/join_pro")
    public String join_pro(@Valid Member member, BindingResult result){
        memberMapper.joinInsert(member);
        return "join_success";
    }

    @GetMapping("/memberList")
    public String memberList(Model model){
        List<Member> list = memberMapper.memberList();
        model.addAttribute("list",list);
        return "memberList";
    }








}
