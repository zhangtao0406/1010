package com.zy.demo.controller;

import com.zy.demo.pojo.Checking;
import com.zy.demo.pojo.CheckingStatistics;
import com.zy.demo.pojo.Notice;
import com.zy.demo.pojo.User;
import com.zy.demo.service.CheckingService;
import com.zy.demo.util.CellValueUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
@RequestMapping("/CheckingController")
public class CheckingController {

    //依赖注入
    @Resource
    private CheckingService checkingService;


    /**
     * 考勤数据导入模糊查询
     *
     * @param checking
     * @return
     */
    @RequestMapping("/findCheckingAll")
    @ResponseBody
    private List<Checking> findCheckingAll(Checking checking) {

        List<Checking> checkingAll = checkingService.findCheckingAll (checking);

        return checkingAll;
    }

    /**
     * 考勤数据导入
     *
     * @return
     */
    @RequestMapping("/addCheckingAndCheckingStatistics")
    @ResponseBody
    public Boolean addCheckingAndCheckingStatistics(Checking checking, MultipartFile pictureFile, HttpServletResponse response, HttpSession session) throws Exception {
        int a = 0;
        int b = 0;
        response.setCharacterEncoding ("utf-8");
        //上传文件的原始名称   ——————>为了生成新的名称
        String oldFileName = pictureFile.getOriginalFilename ();
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
            pictureFile.transferTo (NewFile);
            //获取session
            User user = (User) session.getAttribute ("userSession");
            //操作人
            checking.setUserName (user.getUserName ());
            //文件名
            checking.setFileName (oldFileName);
            //文件路径
            checking.setFileUrl (courseFile);
            //考勤
            a = checkingService.addChecking (checking);
        }
        /*      if (j > 0) {
            response.setCharacterEncoding ("utf-8");
            String fileName = pictureFile.getOriginalFilename ();
            CellValueUtil cellValueUtil = new CellValueUtil ();
            String fileType = fileName.substring (fileName.lastIndexOf (".") + 1);
            HSSFWorkbook workbook;
            if (fileName.endsWith ("xls")) {
                //2003
                workbook = new HSSFWorkbook (pictureFile.getInputStream ());
            } else if (fileName.endsWith ("XLSX")) {
                //2007
                workbook = new HSSFWorkbook (pictureFile.getInputStream ());

            } else {
                throw new Exception ("文件不是Excel文件");
            }

            Sheet sheet = workbook.getSheet ("Sheet0");
            int rows = sheet.getLastRowNum ();// 指的行数，一共有多少行+
            if (rows == 0) {
                throw new Exception ("空的文档，请填写数据");
            }
            for (int i = 1; i <= rows + 1; i++) {
                //创建考勤统计对象
                CheckingStatistics checkingStatistics = new CheckingStatistics ();
                checkingStatistics.setCheckingId (checking.getId ());//设置考勤统计id
                // 读取左上端单元格
                Row row = sheet.getRow (i);
                // 行不为空
                if (row != null) {
                    // **读取cell**
                    User user = new User ();
                    //编号
                    String checkingNum = cellValueUtil.getCellValue (row.getCell (0));
                    checkingStatistics.setCheckingNum (checkingNum);
                    //姓名
                    String checkingName = cellValueUtil.getCellValue (row.getCell (1));
                    checkingStatistics.setCheckingName (checkingName);
                    //岗位
                    String post = cellValueUtil.getCellValue (row.getCell (2));
                    checkingStatistics.setPost (post);
                    //出勤
                    String turnWork = cellValueUtil.getCellValue (row.getCell (3));
                    checkingStatistics.setTurnWork (turnWork);
                    //事假
                    String casualLeave = cellValueUtil.getCellValue (row.getCell (4));
                    checkingStatistics.setSickLeave (casualLeave);
                    //病假
                    String sickLeave = cellValueUtil.getCellValue (row.getCell (5));
                    checkingStatistics.setSickLeave (sickLeave);
                    //旷工
                    String absenteeism = cellValueUtil.getCellValue (row.getCell (6));
                    checkingStatistics.setSickLeave (absenteeism);
                    //婚假
                    String marriageLeave = cellValueUtil.getCellValue (row.getCell (7));
                    checkingStatistics.setMarriageLeave (marriageLeave);
                    //产假
                    String maternityLeave = cellValueUtil.getCellValue (row.getCell (8));
                    checkingStatistics.setMaternityLeave (maternityLeave);
                    //迟到/早退
                    String beLate = cellValueUtil.getCellValue (row.getCell (9));
                    checkingStatistics.setBeLate (beLate);
                    //备注
                    String remark = cellValueUtil.getCellValue (row.getCell (10));
                    checkingStatistics.setRemark (remark);
                    //签字
                    String signature = cellValueUtil.getCellValue (row.getCell (11));
                    checkingStatistics.setSignature (signature);
                    //考勤统计数据
                    int l = checkingService.addCheckingStatistics (checkingStatistics);
                }
            }
            return true;
        }*/

        InputStream inputStream = pictureFile.getInputStream();
        Workbook work =  new HSSFWorkbook(inputStream);
        if (null == work) {
            throw new Exception("创建Excel工作薄为空！");
        }
        Sheet sheet = null;
        Row row = null;
        Cell cell = null;
        //遍历Excel中所有的sheet
        for (int i = 0; i < work.getNumberOfSheets(); i++) {
            sheet = work.getSheetAt(i);
            if (sheet == null) {
                continue;
            }
            //遍历当前sheet中的所有行
            for (int j =1; j <= sheet.getLastRowNum(); j++) {
                row = sheet.getRow(j);
                if (row == null ) {
                    continue;
                }
                CheckingStatistics checkingStatistics = new CheckingStatistics ();
                checkingStatistics.setCheckingId (checking.getId ());//设置考勤统计id
                String[] product=null;
                String[] count=null;
                //创建考勤统计对象
                //把每个单元格的值付给对象的对应属性
                if (row.getCell(0)!=null){
                    checkingStatistics.setCheckingNum (String.valueOf(row.getCell(0)));//编号
                }
                if (row.getCell(1)!=null){
                    checkingStatistics.setCheckingName (String.valueOf(row.getCell(1)));//姓名
                }
                if (row.getCell(2)!=null){
                    checkingStatistics.setPost (String.valueOf(row.getCell(2)));//岗位
                }
                if (row.getCell(3)!=null){
                    checkingStatistics.setTurnWork (String.valueOf(row.getCell(3)));//出勤
                }

                if (row.getCell(4)!=null){
                    checkingStatistics.setCasualLeave  (String.valueOf(row.getCell(4)));//事假
                }
                if (row.getCell(5)!=null){
                    checkingStatistics.setSickLeave  (String.valueOf(row.getCell(5)));//病假
                }
                if (row.getCell(6)!=null){
                    checkingStatistics.setAbsenteeism  (String.valueOf(row.getCell(6)));//旷工
                }
                if (row.getCell(7)!=null){
                    checkingStatistics.setMarriageLeave  (String.valueOf(row.getCell(7)));//婚假
                }
                if (row.getCell(8)!=null){
                    checkingStatistics.setMaternityLeave  (String.valueOf(row.getCell(8)));//产假
                }
                if (row.getCell(9)!=null){
                    checkingStatistics.setBeLate  (String.valueOf(row.getCell(9)));//迟到/早退
                }
                if (row.getCell(10)!=null){
                    checkingStatistics.setRemark  (String.valueOf(row.getCell(10)));//备注
                }
                if (row.getCell(11)!=null){
                    checkingStatistics.setSignature  (String.valueOf(row.getCell(11)));//签字
                }
                //添加订单
                 b = checkingService.addCheckingStatistics (checkingStatistics);
            }
        }
        inputStream.close();
        if(b>0){
        return true;
        }
        return false;

    }


    /**
     * 考勤数据导入详情
     *
     * @param id
     * @return
     */
    @RequestMapping("/CheckingById")
    @ResponseBody
    private Checking CheckingById(Integer id) {

        Checking checkingAll = checkingService.CheckingById (id);

        return checkingAll;
    }


    /**
     * 考勤数据导入待统计
     *
     * @param checking
     * @return
     */
    @RequestMapping("/findCheckingTongJiAll")
    @ResponseBody
    private List<Checking> findCheckingTongJiAll(Checking checking) {

        List<Checking> checkingAll = checkingService.findCheckingTongJiAll (checking);

        return checkingAll;
    }


    /**
     * 根据考勤统计查询考勤数据
     *
     * @param id
     * @return
     */
    @RequestMapping("/checkingStatisticsMessageAllById")
    @ResponseBody
    private List<CheckingStatistics> checkingStatisticsMessageAllById(Integer id) {

        List<CheckingStatistics> checkingStatistics = checkingService.checkingStatisticsMessageAllById (id);

        return checkingStatistics;
    }

    /**
     * 考勤统计管理,统计
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateTongJiChecking")
    public Boolean updateTongJiChecking(Integer id, String approvalName, String comment) {
        Checking checking = new Checking ();
        checking.setId (id);
        checking.setApprovalName (approvalName);
        checking.setComment (comment);
        int i = checkingService.updateTongJiChecking (checking);
        if (i > 0) {
            //修改完为已统计
            int j = checkingService.checkingYiTongJi (id);
            return true;
        } else {
            return false;
        }
    }

    /**
     * 考勤统计管理撤回
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/checkingCheHui")
    public Boolean checkingCheHui(int id) {
        int i = checkingService.checkingCheHui (id);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * 考勤数据考勤审批模糊查询
     *
     * @param checking
     * @return
     */
    @RequestMapping("/findCheckingShenPiAll")
    @ResponseBody
    private List<Checking> findCheckingShenPiAll(Checking checking) {

        List<Checking> checkingAll = checkingService.findCheckingShenPiAll (checking);

        return checkingAll;
    }

    /**
     * 审批通过返回申请人
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/checkingTongGuo")
    public Boolean checkingTongGuo(Integer id, String approvalName, String comment,HttpSession session) {
        User user = (User) session.getAttribute ("userSession");
        Checking checking = new Checking ();
        checking.setId (id);
        checking.setApprovalName (approvalName);
        checking.setComment (comment);
        //审批通过返回申请人
        int i = checkingService.updateTongJiChecking (checking);
        if (i > 0) {
            //修改完为已统计
            int j = checkingService.checkingWanChen (id);
            if(j>0){
                //创建通知表对象
                Notice notice = new Notice ();
                notice.setNoticeName ("考勤审批通过");//通知标题
                notice.setInitiator (user.getUserName ());//发起人
                //通知表添加信息
                int l = checkingService.addCheckingNotice (notice);
                if(l>0){
                return true;
                }
                return  false;
            }
            return  false;
        } else {
            return false;
        }
    }

    /**
     * 审批不通过
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/checkingBuTongGuo")
    public Boolean checkingBuTongGuo(Integer id, String approvalName, String comment,HttpSession session) {
        User user = (User) session.getAttribute ("userSession");
        Checking checking = new Checking ();
        checking.setId (id);
        checking.setApprovalName (approvalName);
        checking.setComment (comment);
        //审批通过返回申请人
        int i = checkingService.updateTongJiChecking (checking);
        if (i > 0) {
            //修改完为已驳回
            int j = checkingService.checkingBoHui (id);
            if(j>0){
                //创建通知表对象
                Notice notice = new Notice ();
                notice.setNoticeName ("考勤审批不通过");//通知标题
                notice.setInitiator (user.getUserName ());//发起人
                //通知表添加信息
                int l = checkingService.addCheckingNotice (notice);
                if(l>0){
                    return true;
                }
                return  false;
            }
            return  false;
        } else {
            return false;
        }
    }
}
