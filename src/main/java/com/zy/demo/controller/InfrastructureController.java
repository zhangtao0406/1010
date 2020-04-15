package com.zy.demo.controller;

import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Facility;
import com.zy.demo.pojo.Infrastructure;
import com.zy.demo.service.InfrastructureService;
import com.zy.demo.util.AliyunOSSUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/InfrastructureController")
public class InfrastructureController {
    //依赖注入
    @Resource
    private InfrastructureService infrastructureService;


    /**
     * 基础设施档案的模糊
     *
     * @param infrastructure
     * @return
     */
    @RequestMapping("/findInfrastructureAll")
    @ResponseBody
    private List<Infrastructure> findInfrastructureAll(Infrastructure infrastructure) {

        List<Infrastructure> infrastructureAll = infrastructureService.findInfrastructureAll (infrastructure);

        return infrastructureAll;
    }


    /**
     * 基础设施类型
     *
     * @return
     */
    @RequestMapping("/facilityAll")
    @ResponseBody
    private List<Facility> facilityAll() {

        List<Facility> facilityAll = infrastructureService.facilityAll
                ();

        return facilityAll;
    }

    /**
     * 添加基础设施档案
     *
     * @return
     */
    @RequestMapping("/addInfrastructureAndAccessory")
    @ResponseBody
    public Boolean addTrainAndAccessory(Infrastructure infrastructure, MultipartFile[] pictureFile, HttpServletResponse response, String nextMaintainString) throws Exception {
        int j = 0;

        //—————————————————————————时间格式转换———————————————————————————————
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd");
        try {
            //转换时间格式 添加到对象中
            Date nextMaintainString1 = simpleDateFormat.parse (nextMaintainString);
            infrastructure.setNextMaintain (nextMaintainString1);
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        //—————————————————————————时间格式转换———————————————————————————————

        //添加基础设施档案
        int i = infrastructureService.addInfrastructure (infrastructure);
        if (i > 0) {
            //获取自增主键
            Integer id = infrastructure.getId ();
            response.setCharacterEncoding ("utf-8");
            for (MultipartFile multipartFile : pictureFile) {
                //创建附件对象
                Accessory accessory = new Accessory ();
                //上传图片的原始名称   ——————>为了生成新的名称
                String oldFileName = multipartFile.getOriginalFilename ();
                //MultipartFile productImg接受商品图片
                if (pictureFile != null && oldFileName != null && oldFileName.length () > 0) {

                    // 新的图片
                    File NewFile = new File ("D:\\tomcat8\\imgs\\" + oldFileName);
                    String courseFile = null;
                    try {
                        courseFile = NewFile.getCanonicalPath ();
                    } catch (IOException e) {
                        e.printStackTrace ();
                    }
                    // 开始上传   将内存的数据写入磁盘
                    multipartFile.transferTo (NewFile);
                    //上传成功将图片名称写到属性当中
                    //向图片中设置关联的id
                    accessory.setInfrastructureId (id);
                    //文件名
                    accessory.setAccessoryName (oldFileName);
                }
                if (null != multipartFile) {

                    String filename = multipartFile.getOriginalFilename ();
                    if (!"".equals (filename.trim ())) {
                        File newFile = new File (filename);
                        //上传到OSS
                        FileOutputStream os = new FileOutputStream (newFile);
                        os.write (multipartFile.getBytes ());
                        os.close ();
                        multipartFile.transferTo (newFile);
                        String uploadUrl = AliyunOSSUtil.upload (newFile);
                        accessory.setAccessoryUrl (uploadUrl);
                        System.out.println (uploadUrl);
                        if (uploadUrl != null) {
                            //添加附件
                            j = infrastructureService.addInfrastructureAndAccessory (accessory);
                        }
                    }
                }
            }
        }
        if (j > 0) {
            return true;
        }
        return false;

    }

    /**
     * 根据id查询基础设施档案
     *
     * @return
     */
    @RequestMapping("/InfrastructureById")
    @ResponseBody
    private Infrastructure InfrastructureById(Integer id) {

        Infrastructure infrastructure = infrastructureService.InfrastructureById (id);

        return infrastructure;
    }

    /**
     * 编辑基础设施档案
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateInfrastructure")
    public Boolean updateInfrastructure(Infrastructure infrastructure, Integer id, String nextMaintainString) {
        //—————————————————————————时间格式转换———————————————————————————————
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd");
        try {
            //转换时间格式 添加到对象中
            Date nextMaintainString1 = simpleDateFormat.parse (nextMaintainString);
            infrastructure.setNextMaintain (nextMaintainString1);
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        //—————————————————————————时间格式转换———————————————————————————————
        infrastructure.setId (id);
        int i = infrastructureService.updateInfrastructure (infrastructure);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 根据id查询基础设施档案图片
     *
     * @return
     */
    @RequestMapping("/infrastructureAndAccessoryAllById")
    @ResponseBody
    private List<Infrastructure> infrastructureAndAccessoryAllById(Integer id) {

        List<Infrastructure> infrastructureList = infrastructureService.infrastructureAndAccessoryAllById (id);

        return infrastructureList;
    }

    /**
     * 基础设施类型模糊
     *
     * @param facility
     * @return
     */
    @RequestMapping("/findFacilityAll")
    @ResponseBody
    private List<Facility> findFacilityAll(Facility facility) {

        List<Facility> facilityAll = infrastructureService.findFacilityAll (facility);

        return facilityAll;
    }

    /**
     * 基础设施类型新增
     *
     * @return
     */
    @RequestMapping("/addInFacility")
    @ResponseBody
    public Boolean addInFacility(Facility facility) {
        //—————————————————————————自动生成基础设施类型编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年基础设施类型 为了生成员工编号
        Integer userCode = infrastructureService.facilityCode (year);
        Integer code = userCode + 1;
        //生成基础设施类型
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String facilityNum = substring + "ZY" + "-00" + code;
        facility.setFacilityNum (facilityNum);
        //—————————————————————————自动生成基础设施类型编号———————————————————————————
        int i = infrastructureService.addInFacility (facility);
        if (i > 0) {
            return true;
        }
        return false;
    }

    /**
     * 基础设施类型详情
     *
     * @param id
     * @return
     */
    @RequestMapping("/facilityById")
    @ResponseBody
    private Facility facilityById(Integer id) {

        Facility facility = infrastructureService.facilityById (id);

        return facility;
    }

    /**
     * 编辑基础设施类型
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateFacility")
    public Boolean updateFacility(Facility facility, Integer id) {
        facility.setId (id);
        int i = infrastructureService.updateFacility(facility);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

}
