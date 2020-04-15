package com.zy.demo.service.impl;

import com.zy.demo.mapper.UserMapper;
import com.zy.demo.pojo.*;
import com.zy.demo.redis.JedisClient;
import com.zy.demo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    //依赖注入
    @Resource
    private UserMapper userMapper;

    @Resource
    private JedisClient jedisClient;

    private final String key = "zkey";

    //查询所有用户
    @Override
    public List<User> findUserAll(String userName, String departmentName, String loginId, String userPhone) {
        return userMapper.findUserAll (userName, departmentName, loginId, userPhone);
    }

    //查询部门
    @Override
    public List<Department> departmentAll() {
        return userMapper.departmentAll ();
    }

    //查看今年用户数量  为了生成员工编号
    @Override
    public Integer userCode(String year) {
        return userMapper.userCode (year);
    }

    //用户添加
    @Override
    public int addUser(User user) {
        return userMapper.addUser (user);
    }

    //根据id查询用户
    @Override
    public User findUserAllById(Integer id) {
        return userMapper.findUserAllById (id);
    }

    //查询角色名称和角色
    @Override
    public List<Role> findUserDepartmentById(Integer id) {
        return userMapper.findUserDepartmentById (id);
    }

    //查询所有角色
    @Override
    public List<Role> RoleAll() {
        return userMapper.RoleAll ();
    }

    //添加用户角色相当于修改
    @Override
    public int userRoleUpdate(Integer userId, Integer roleId) {
        return userMapper.userRoleUpdate (userId, roleId);
    }

    //删除用户角色
    @Override
    public int userRoleDelete(Integer userId) {
        return userMapper.userRoleDelete (userId);
    }

    //重置密码
    @Override
    public int userUpdatePassWord(Integer id, Integer password) {
        return userMapper.userUpdatePassWord (id, password);
    }

    //查询所有正式人员信息 外加模糊查询
    @Override
    public List<User> findUserRecordAll(User user) {
        return userMapper.findUserRecordAll (user);
    }

    //正式员工管理添加
    @Override
    public int addUserUserRecord(User user) {
        return userMapper.addUserUserRecord (user);
    }

    //查询借调信息
    @Override
    public List<SecondMessage> secondMessageAll(int id) {
        return userMapper.secondMessageAll (id);
    }

    //查询转岗信息
    @Override
    public List<TransferMessage> transferMessageAll(int id) {
        return userMapper.transferMessageAll (id);
    }

    //编辑人员信息
    @Override
    public int UpdateUserRecord(User user) {
        return userMapper.UpdateUserRecord (user);
    }

    //借调用户
    @Override
    public int JDuser(SecondMessage secondMessage) {
        return userMapper.JDuser (secondMessage);
    }

    //转岗用户
    @Override
    public int ZGuser(TransferMessage transferMessage) {
        return userMapper.ZGuser (transferMessage);
    }

    //修改岗位用户
    @Override
    public int ZGxg(Integer departmentId, Integer userId) {
        return userMapper.ZGxg (userId);
    }

    //员工离职
    @Override
    public int liZhiUser(int id) {
        return userMapper.liZhiUser (id);
    }

    //员工退休
    @Override
    public int tuiXiuUser(int id) {
        return userMapper.tuiXiuUser (id);
    }

    // 查询所有临时在职人员信息 外加模糊查询
    @Override
    public List<User> findUserRecordAllUserStatus3(User user) {
        return userMapper.findUserRecordAllUserStatus3 (user);
    }

    //员工转正
    @Override
    public int zhuanzhengUser(int id) {
        return userMapper.zhuanzhengUser (id);
    }

    //查询所有在职人员信息 外加模糊查询
    @Override
    public List<User> findUserRecordAllUserStatus0(User user) {
        return userMapper.findUserRecordAllUserStatus0 (user);
    }

    //查询所有父级部门
    @Override
    public List<Department> departmentFtherAll() {
        return userMapper.departmentFtherAll ();
    }

    //每日新增用户数量
    @Override
    public Integer countXinZengUserAll() {
        return userMapper.countXinZengUserAll ();
    }

    /**
     * redis排行榜
     *
     * @return
     */
    @Override
    public Set<String> credis() {
        List<Goods> credis = userMapper.credis ();


        //        //调用exists判断key（key名）中是否有值 有值直接从redis中那值，没有走下面的form
        //        if (jedisClient.exists(key)==true){
        //            return jedisClient.zrevrange(key,0,-1);
        //        }
        //key没有值 通过zadd向里面set值
        for (int i = 0; i < credis.size (); i++) {
            jedisClient.zadd (key, Integer.parseInt (credis.get (i).getGoodsAmount ()),//物品数量
                    credis.get (i).getGoodsName () + "_" + Integer.parseInt (credis.get (i).getGoodsAmount ()) + "_" +
                            credis.get (i).getGoodsType () + "_" + credis.get (i).getGoodsUnit ());
        }

        return jedisClient.zrevrange (key, 0, 3);//所有-1
    }

    //在redis中查询存入Cookie中sessionId
    @Override
    public String getRedisLoginUserId(String id) {
        String s = jedisClient.get (id+"");
        return s;
    }
}
