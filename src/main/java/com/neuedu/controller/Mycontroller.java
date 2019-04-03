package com.neuedu.controller;

import com.neuedu.util.Message;
import com.neuedu.util.MyUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Created by 86178 on 2019/3/23.
 */
@Controller
@RequestMapping("/user")
public class Mycontroller {
    /*@Resource
    UserService userService;
   @GetMapping("/goLogin")
    public String goLogin(){
       return "user/login";
   }
    @PostMapping("/doLogin")
    @ResponseBody
    public Message dologin(User user, String code, HttpServletResponse response, HttpSession session) throws IOException {
        Message message=null;
        User login=userService.login(user);
        if(login==null)
            message=new Message(0,"用户名不存在");
        else{
            if(!login.getPassword().equals(user.getPassword())){
                message=new Message(0,"密码输入错误");
            }else{
               if(session.getAttribute("img")==null){
                   message=new Message(0,"登录超时");
               }else{
                   String img=session.getAttribute("img").toString();
                   System.out.println(img);
                   System.out.println(code);
                   if(!img.equalsIgnoreCase(code)){
                       message=new Message(0,"验证码输入错误");
                   }else{
                       message=new Message(1,"登陆成功");
                   }
               }
            }
        }
        return message;
    }
    @GetMapping("/img")
    public void getImg(HttpServletResponse response,HttpSession session) throws IOException {
        char[] array= MyUtil.getStr();
        BufferedImage image=new BufferedImage(100,43,BufferedImage.TYPE_INT_RGB);
        Graphics2D graphics = image.createGraphics();
        graphics.setColor(Color.BLACK);
        graphics.fillRect(0,0,100,43);
        graphics.setColor(Color.white);
        graphics.setFont(new Font("微软雅黑",Font.BOLD,32));
        graphics.drawString(new String(array),5,30);
        session.setAttribute("img",new String(array));

        ImageIO.write(image,"JPG",response.getOutputStream());

    }
    @GetMapping("/index")
    public String index(){
        return "user/index";
    }
    @GetMapping("/list")
    public String list(){
        return "user/list";
    }
    @GetMapping("/getList")
    @ResponseBody
    public Message getList(User user){
        return new Message(1,userService.list(user));
    }
    @GetMapping("/goAdd")
    public String goAdd(){
        return "user/add";
    }
    @PostMapping("/doAdd")
    public String doAdd(User user){
        userService.add(user);
        return "redirect:list";
    }
    @GetMapping("/goUpdate")
    public String goUpdate(int id,ModelMap modelMap){
        User user=userService.getUserById(id);
        modelMap.addAttribute("user",user);
        return "user/edit";
    }
    @PostMapping("/doUpdate")
    public String doUpdate(User user){
        userService.update(user);
        return "redirect:list";
    }
    @GetMapping("/delete")
    public String delete(int id,int flag){
        if(flag==1)
            userService.delete(id);
        else
            userService.reback(id);
        return "redirect:list";
    }*/
}
