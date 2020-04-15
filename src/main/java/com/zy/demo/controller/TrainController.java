package com.zy.demo.controller;

import com.alibaba.fastjson.JSONArray;
import com.zy.demo.pojo.Accessory;
import com.zy.demo.pojo.Train;
import com.zy.demo.pojo.TrainPlan;
import com.zy.demo.pojo.User;
import com.zy.demo.service.TrainService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/TrainController")
public class TrainController {
    //依赖注入
    @Resource
    private TrainService trainService;

    /**
     * 查询培训信息
     * @param train
     * @return
     */
    @RequestMapping("/findTrainAll")
    @ResponseBody
    private List<Train> findTrainAll(Train train)  {

        List<Train> trainList = trainService.findTrainAll(train);

        return trainList;
    }


    /**
     * 添加培训
     *
     * @return
     */
    @RequestMapping("/addTrainAndAccessory")
    @ResponseBody
    public Boolean addTrainAndAccessory(Train train, MultipartFile[] pictureFile, HttpServletResponse response, HttpServletRequest request,String achieveTimeString) throws Exception {
        int j=0;
        //创建Session
        HttpSession session = request.getSession ();
        //获取Session里的值
        User user = (User) session.getAttribute ("userSession");
        train.setUserName (user.getUserName ());
        //—————————————————————————自动生成培训编号———————————————————————————
        SimpleDateFormat sdf = new SimpleDateFormat ("yyyyMMddHHmmss");
        //获取当前年
        Calendar date = Calendar.getInstance ();
        String year = String.valueOf (date.get (Calendar.YEAR));

        //查看今年培训表数量  为了生成培训编号
        Integer trainCode = trainService.trainCode (year);
        Integer code = trainCode + 1;
        //生成培训编号
        String fileName1 = sdf.format (new Date ());
        //字符串截取
        String substring = fileName1.substring (0, 8);
        String trainNum = substring + "ZY" + "-00" + code;
        train.setTrainNum (trainNum);
        //—————————————————————————自动生成培训编号———————————————————————————
        //—————————————————————————时间格式转换———————————————————————————————
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat ("yyyy-MM-dd");
        try {
            //转换时间格式 添加到对象中
            Date achieveTimeString1 =  simpleDateFormat.parse (achieveTimeString);
           train.setAchieveTime (achieveTimeString1);
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        //—————————————————————————时间格式转换———————————————————————————————

        //添加培训
        int i =trainService.findaddTrain (train);
        System.out.println (3333);
        //获取自增主键
        Integer id = train.getId ();
         response.setCharacterEncoding ("utf-8");
        for (MultipartFile multipartFile : pictureFile) {
            //上传图片的原始名称   ——————>为了生成新的名称
            String oldFileName = multipartFile.getOriginalFilename ();
            //MultipartFile productImg接受商品图片
            if (pictureFile != null && oldFileName != null && oldFileName.length () > 0) {

                // 新的图片
                File NewFile = new File ("D:\\tomcat8\\imgs\\" + oldFileName);
                String courseFile = null;
                try {
                    courseFile = NewFile.getCanonicalPath();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                // 开始上传   将内存的数据写入磁盘
                multipartFile.transferTo (NewFile);
                //上传成功将图片名称写到属性当中
                //创建附件对象
                Accessory accessory = new Accessory ();
                //向图片中设置关联的id
                accessory.setTrainId (id);
                accessory.setAccessoryName (oldFileName);
                accessory.setAccessoryUrl (courseFile);
                //添加附件
               j = trainService.findaddAccessory (accessory);

            }

        }
        if(j>0){
            return true;
        }return false;

    }

    /**
     *培训详情
     * @param id
     * @return
     */
    @RequestMapping("/trainAllById")
    @ResponseBody
    private Train trainAllById(Integer id)  {

        Train train = trainService.trainAllById(id);

        return train;
    }

    /**
     *  培训详情附件
     * @param id
     * @return
     */
    @RequestMapping("/trainAndAccessoryAllById")
    @ResponseBody
    private List<Train> trainAndAccessoryAllById(Integer id)  {

        List<Train> trainList = trainService.trainAndAccessoryAllById(id);

        return trainList;
    }

    /**
     * 培训驳回
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/boHuiTrain")
    public Boolean boHuiTrain(int id){
        int i = trainService.boHuiTrain(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 培训办结
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/banJieTrain")
    public Boolean banJieTrain(int id){
        int i = trainService.banJieTrain(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 培训终止
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/trainingToTerminate")
    public Boolean trainingToTerminate(int id){
        int i = trainService.trainingToTerminate(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }

    /**
     *  进度
     * @param id
     * @return
     */
    @RequestMapping("/TrainPlanById")
    @ResponseBody
    private List<TrainPlan> TrainPlanById(Integer id)  {

        List<TrainPlan> trainPlanList = trainService.TrainPlanById(id);

        return trainPlanList;
    }
    /**
     *  进度情况详情
     * @param id
     * @return
     */
    @RequestMapping("/TrainPlanMessageById")
    @ResponseBody
    private TrainPlan TrainPlanMessageById(Integer id)  {

        TrainPlan trainPlan = trainService.TrainPlanMessageById(id);

        return trainPlan;
    }

    /**
     * 查询培训执行
     * @param train
     * @return
     */
    @RequestMapping("/TrainingPerformedAll")
    @ResponseBody
    private List<Train> TrainingPerformedAll(Train train)  {

        List<Train> trainList = trainService.TrainingPerformedAll(train);

        return trainList;
    }

    /**
     * 添加进度
     * @return
     */
    @ResponseBody
    @RequestMapping("/addJinDu")
    public Boolean addJinDu(TrainPlan trainPlan){
        int i = trainService.addJinDu(trainPlan);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 进度提交
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/jinDuTiJiao")
    public Boolean jinDuTiJiao(int id){
        int i = trainService.jinDuTiJiao(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }
    /**
     * 进度打回
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/jinDuDaHui")
    public Boolean jinDuDaHui(int id){
        int i = trainService.jinDuDaHui(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }


    /**
     * 培训执行
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/peiXunZhiXing")
    public Boolean peiXunZhiXing(int id){
        int i = trainService.peiXunZhiXing(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }


    /**
     * 培训反馈
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/peiXunFanKui")
    public Boolean peiXunFanKui(int id){
        int i = trainService.peiXunFanKui(id);
        if (i>0){
            return true;
        }else {
            return false;
        }
    }

}
