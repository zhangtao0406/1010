package com.zy.demo.mapper;

import com.zy.demo.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //查询所有用户
    List<User> findUserAll(@Param("userName") String userName, @Param("departmentName") String departmentName, @Param("loginId") String loginId, @Param("userPhone") String userPhone);

    //查询部门
    List<Department> departmentAll();

    //查看今年用户数量  为了生成员工编号
    Integer userCode(String year);

    //用户添加
    int addUser(User user);

    //根据id查询用户
    User findUserAllById(Integer id);

    //查询角色名称和角色
    List<Role> findUserDepartmentById(Integer id);

    //查询所有角色
    List<Role> RoleAll();

    //添加用户角色相当于修改
    int userRoleUpdate(@Param("userId") Integer userId, @Param("roleId") Integer roleId);

    //删除用户角色
    int userRoleDelete(Integer userId);

    //重置密码
    int userUpdatePassWord(@Param("id") Integer id, @Param("password") Integer password);

    //查询所有正式人员信息 外加模糊查询
    List<User> findUserRecordAll(User user);

    //正式员工管理添加
    int addUserUserRecord(User user);

    //查询借调信息
    List<SecondMessage> secondMessageAll(int id);

    //查询转岗信息
    List<TransferMessage> transferMessageAll(int id);

    //编辑人员信息
    int UpdateUserRecord(User user);

    //借调用户
    int JDuser(SecondMessage secondMessage);

    //转岗用户
    int ZGuser(TransferMessage transferMessage);

    //修改岗位用户
    int ZGxg(Integer userId);

    //员工离职
    int liZhiUser(int id);

    //员工退休
    int tuiXiuUser(int id);

    // 查询所有临时在职人员信息 外加模糊查询
    List<User> findUserRecordAllUserStatus3(User user);

    //员工转正
    int zhuanzhengUser(int id);

    //查询所有在职人员信息 外加模糊查询
    List<User> findUserRecordAllUserStatus0(User user);

    //查询所有父级部门
    List<Department> departmentFtherAll();

    //每日新增用户数量
    Integer countXinZengUserAll();


    List<Goods> credis();
}