package com.zy.demo.controller;

import com.zy.demo.pojo.*;
import com.zy.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/UserController")
public class UserController {
    //依赖注入
    @Resource
    private UserService userService;

    /**
     * 查询所有用户
     *
     * @param userName
     * @param departmentName
     * @param loginId
     * @param userPhone
     * @return
     */
    @RequestMapping("/findUserAll")
    @ResponseBody
    private List<User> findUserAll(String userName, String departmentName, String loginId, String userPhone) {
        List<User> userList = userService.findUserAll (userName, departmentName, loginId, userPhone);
        return userList;
    }

    /**
     * 查询所有部门
     *
     * @return
     */
    @RequestMapping("/departmentAll")
    @ResponseBody
    private List<Department> departmentAll() {
        List<Department> departmentList = userService.departmentAll ();
        return departmentList;
    }


    /**
     * 查询所有父级部门
     *
     * @return
     */
    @RequestMapping("/departmentFtherAll")
    @ResponseBody
    private List<Department> departmentFtherAll() {
        List<Department> departmentList = userService.departmentFtherAll ();
        return departmentList;
    }

    /**
     * 用户添加
     *
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping("/addUser")
    public Boolean addUser(User user, HttpSession session) {
        //—————————————————————————自动生成员工编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年用户数量  为了生成员工编号
        Integer userCode = userService.userCode (year);
        Integer code = userCode + 1;
        //生成员工编号
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String userNum = substring + "ZY" + "-00" + code;
        user.setUserNum (userNum);
        //—————————————————————————自动生成员工编号———————————————————————————
        int i = userService.addUser (user);

        if (i > 0) {
            //每日新增用户数量
            Integer countXinZengUserAll = userService.countXinZengUserAll ();
            //每日新增用户数量
            session.setAttribute ("countXinZengUserAll", countXinZengUserAll);
            return true;
        }
        return false;

    }

    /**
     * 根据id查询用户
     *
     * @param id
     * @return
     */
    @RequestMapping("/userAllById")
    @ResponseBody
    private User findUserAllById(Integer id) {
        User user = userService.findUserAllById (id);
        Long age1 = user.getBirthday ().getTime ();
        //获取现在时间
        Long age2 = System.currentTimeMillis ();
        long age = (age2 - age1) / 1000 / 60 / 60 / 24 / 365;
        user.setAge (age);
        return user;
    }

    /**
     * 查询角色名称和角色
     * 查询所有角色
     *
     * @param id
     * @return
     */
    @RequestMapping("/findUserDepartmentById")
    @ResponseBody
    public Map<String, List<Role>> findUserDepartmentById(Integer id) {
        Map<String, List<Role>> map = new HashMap<> ();
        //查询角色名称和角色
        List<Role> role = userService.findUserDepartmentById (id);
        //查询所有角色
        List<Role> allList = userService.RoleAll ();
        map.put ("role", role);
        map.put ("allList", allList);
        return map;
    }


    /**
     * 删除用户角色
     * 添加用户角色相当于修改
     *
     * @param userId
     * @param roleId
     * @return
     */
    @RequestMapping("/userRoleUpdate")
    @ResponseBody
    private Boolean userRoleUpdate(Integer userId, Integer roleId) {
        //删除用户角色
        int j = userService.userRoleDelete (userId);
        //添加用户角色相当于修改
        int i = userService.userRoleUpdate (userId, roleId);
        return true;
    }


    /**
     * 重置密码
     *
     * @param id
     * @param password
     * @return
     */
    @RequestMapping("/userUpdatePassWord")
    @ResponseBody
    private Boolean userUpdatePassWord(Integer id, Integer password) {
        //删除用户角色
        int i = userService.userUpdatePassWord (id, password);
        if (i > 0) {
            return true;
        }
        return false;
    }

    /**
     * 查询所有正式人员信息 外加模糊查询
     *
     * @param user
     * @return
     */
    @RequestMapping("/findUserRecordAll")
    @ResponseBody
    private List<User> findUserRecordAll(User user) {
        List<User> userList = userService.findUserRecordAll (user);
        return userList;
    }


    /**
     * 正式员工管理添加
     *
     * @param birthdayString
     * @param createTimeString
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping("/addUserUserRecord")
    public Boolean addUser(String birthdayString, String createTimeString, User user, HttpSession session) {
        //—————————————————————————自动生成员工编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年用户数量  为了生成员工编号
        Integer userCode = userService.userCode (year);
        Integer code = userCode + 1;
        //生成员工编号
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String userNum = substring + "ZY" + "-00" + code;
        String loginId = substring + "ZY" + "00" + code;
        user.setLoginId (loginId);
        user.setUserNum (userNum);
        //—————————————————————————自动生成员工编号———————————————————————————
        //—————————————————————————时间格式转换———————————————————————————————
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd");
        try {
            //转换时间格式 添加到对象中
            Date birthdayString1 = simpleDateFormat.parse (birthdayString);
            Date endTime1 = simpleDateFormat.parse (createTimeString);
            user.setBirthday (birthdayString1);
            user.setCreateTime (endTime1);
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        //—————————————————————————时间格式转换———————————————————————————————
        user.setPoliticsStatus ("0");
        user.setUserStatus ("3");
        int i = userService.addUserUserRecord (user);

        if (i > 0) {
            //每日新增用户数量
            Integer countXinZengUserAll = userService.countXinZengUserAll ();
            //每日新增用户数量
            session.setAttribute ("countXinZengUserAll", countXinZengUserAll);
            return true;
        }
        return false;
    }

    /**
     * 查询借调信息
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/secondMessageAll")
    public List<SecondMessage> secondMessageAll(int id) {
        List<SecondMessage> secondMessage = userService.secondMessageAll (id);
        return secondMessage;
    }

    /**
     * 查询转岗信息
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/transferMessageAll")
    public List<TransferMessage> transferMessageAll(int id) {
        List<TransferMessage> transferMessages = userService.transferMessageAll (id);
        return transferMessages;
    }

    /**
     * 编辑人员信息
     *
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping("/UpdateUserRecord")
    public Boolean UpdateUserRecord(User user, Integer id) {
        user.setId (id);
        int i = userService.UpdateUserRecord (user);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 借调用户
     *
     * @param secondMessage
     * @return
     */
    @ResponseBody
    @RequestMapping("/JDuser")
    public Boolean JDuser(SecondMessage secondMessage) {
        int secondMessage1 = userService.JDuser (secondMessage);
        if (secondMessage1 > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 转岗用户
     *
     * @param transferMessage
     * @return
     */
    @ResponseBody
    @RequestMapping("/ZGuser")
    public Boolean ZGuser(TransferMessage transferMessage) {
        //转岗用户
        int i = userService.ZGuser (transferMessage);
        if (i > 0) {
            //修改岗位用户
            int i1 = userService.ZGxg (transferMessage.getDepartmentId (), transferMessage.getUserId ());
            if (i1 > 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * 员工离职
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/liZhiUser")
    public Boolean liZhiUser(int id) {
        int i = userService.liZhiUser (id);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 员工退休
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/tuiXiuUser")
    public Boolean tuiXiuUser(int id) {
        int i = userService.tuiXiuUser (id);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 查询所有临时在职人员信息 外加模糊查询
     *
     * @param user
     * @return
     */
    @RequestMapping("/findUserRecordAllUserStatus3")
    @ResponseBody
    private List<User> findUserRecordAllUserStatus3(User user) {
        List<User> userList = userService.findUserRecordAllUserStatus3 (user);
        return userList;
    }

    /**
     * 员工转正
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/zhuanzhengUser")
    public Boolean zhuanzhengUser(int id) {
        int i = userService.zhuanzhengUser (id);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 查询所有在职人员信息 外加模糊查询
     * retirementTime
     *
     * @param user
     * @return
     */
    @RequestMapping("/findUserRecordAllUserStatus0")
    @ResponseBody
    private List<User> findUserRecordAllUserStatus0(User user) throws ParseException {

        List<User> userList = userService.findUserRecordAllUserStatus0 (user);
        for (User user1 : userList) {
            java.util.Date birthday = user1.getBirthday ();
            SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
            String dateString = formatter.format (birthday);
            String[] arr = dateString.split ("-");
            Integer i = Integer.parseInt (arr[0]);
            Integer year = i + 60;
            arr[0] = String.valueOf (year);
            String date = arr[0] + "-" + arr[1] + "-" + arr[2];
            Date parse = formatter.parse (date);
            user1.setRetirementTime (parse);
        }
        return userList;
    }

    //redis排行榜
    @RequestMapping("/credis")
    @ResponseBody
    public Set<String> credis() {
        Set<String> credis = userService.credis ();
        return credis;
    }

    @RequestMapping("/dengLuSession")
    @ResponseBody
    public Boolean dengLuSession(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            String userId = "";
            for (Cookie cookie : cookies) {
                System.out.println (cookie.getName ()+"======name");
                System.out.println (cookie.getValue ());
                if (cookie.getName().equals("userId")) {
                    userId = cookie.getValue();
                }
            }
            if ("".equals(userId)) {
                return false;
            } else {
                //在redis中查询存入Cookie中sessionId
                String userString = userService.getRedisLoginUserId(userId);
                if (userString != null) {

                    return true;
                } else {
                    return false;
                }
            }
        }
        return false;

    }





}
