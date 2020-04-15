package com.zy.demo.controller;


import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.Power;
import com.zy.demo.pojo.User;
import com.zy.demo.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
    //依赖注入
    @Resource
    private LoginService loginService;


    /**
     * 用户登录
     *
     * @param loginId
     * @param password
     * @param request
     * @return
     */
    @RequestMapping("/indexUser")
    @ResponseBody
    public User indexUser(String loginId, String password, HttpServletRequest request) {
        //获取本机Ip地址
        InetAddress address = null;
        try {
            address = InetAddress.getLocalHost ();
        } catch (UnknownHostException e) {
            e.printStackTrace ();
        }
        String hostAddress = address.getHostAddress ();
        System.out.println (hostAddress);

        //根据用户名密码查询
        User user = loginService.indexUser (loginId, password);
        //判断有没有该用户
        if (user != null) {
            //创建Session
            HttpSession session = request.getSession ();
            //给Session里设值
            session.setAttribute ("userSession", user);
            //在Session中获取Session后期解决不同用户的浏览次数记录
            ServletContext context = request.getSession ().getServletContext ();
            ;
            if (context.getAttribute ("num") != null) {
                int num = (int) context.getAttribute ("num");
                num++;
                context.setAttribute ("num", num);
            } else {
                context.setAttribute ("num", 1);
            }

            //总用户
            Integer countUserAll = loginService.countUserAll ();
            //临时用户
            Integer countLinShiUserAll = loginService.countLinShiUserAll ();
            //总总户
            session.setAttribute ("countUserAll", countUserAll);
            //临时用户
            session.setAttribute ("countLinShiUserAll", countLinShiUserAll);
            //每日新增用户数量
            Integer countXinZengUserAll = loginService.countXinZengUserAll ();
            //每日新增用户数量
            session.setAttribute ("countXinZengUserAll", countXinZengUserAll);
        }
        //跳转
        return user;
    }

    /**
     * 获取用户权限
     *
     * @return
     */
    @RequestMapping("/getPowerById")
    @ResponseBody
    public List<Power> getPowerById(HttpSession session) {
        User user = (User) session.getAttribute ("userSession");
        Integer id = user.getId ();
        List<Power> powers = loginService.getPowerById (id);
        return powers;
    }

    /**
     * 用户退出
     *
     * @param session
     * @return
     */
    @RequestMapping("/indexOutUser")
    @ResponseBody
    public Boolean loginOut(HttpSession session) {
        session.removeAttribute ("userSession");
        return true;
    }

    /**
     * 查看所有未读取通知
     *
     * @return
     */
    @RequestMapping("/NoticeWeiDuQuAll")
    @ResponseBody
    public List<Notice> NoticeWeiDuQuAll() {
        List<Notice> noticeList = loginService.NoticeWeiDuQuAll ();
        return noticeList;
    }

    /**
     * 查看所有通知
     *
     * @return
     */
    @RequestMapping("/NoticeAll")
    @ResponseBody
    public List<Notice> NoticeAll() {
        List<Notice> noticeList = loginService.NoticeAll ();
        return noticeList;
    }


    /**
     * 通知管理读取
     *
     * @return
     */
    @RequestMapping("/DuQuNotice")
    @ResponseBody
    public Boolean DuQuNotice(Integer id,HttpSession session) {
        User user = (User) session.getAttribute ("userSession");
        Notice notice = new Notice ();
        notice.setId (id);
        notice.setOperator (user.getUserName ());
        int i = loginService.DuQuNotice (notice);
        if(i>0){
            return true;
        }
        return false;
    }
}
