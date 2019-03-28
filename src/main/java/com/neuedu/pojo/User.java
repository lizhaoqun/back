package com.neuedu.pojo;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by 86178 on 2019/3/23.
 */
@Data
public class User extends Page{
    private Integer id;
    private String loginId;
    private String name;
    private String phone;
    private String password;
    private Integer sex;
    @JSONField(format = "yyyy-MM-dd")
    private Date birthday;
    private String email;
    private String address;
    private Integer isDel;

}
