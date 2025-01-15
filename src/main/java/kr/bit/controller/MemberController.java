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

    @RequestMapping("join")
    public String main(){
        return "join";
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
