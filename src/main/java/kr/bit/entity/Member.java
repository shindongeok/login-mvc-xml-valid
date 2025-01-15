package kr.bit.entity;

import lombok.Data;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Data
public class Member {


    private String id;

    @Size(max=8)
    private String pwd1;
    private String pwd2;

    @Pattern(regexp = "^[가-힣]+$", message = "한글만 가능합니다")
    private String name;


    private String gender;

    @Size(max=10)
    private String email;
    private String birth;
    private String zipcode;
    private String address;
    private String hobby;
    private String job;
}
