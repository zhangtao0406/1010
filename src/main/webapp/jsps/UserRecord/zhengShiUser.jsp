<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        正式人员管理
    --%>
    <meta charset="utf-8">
    <title>正式人员管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link type="text/css" href="/index/css/bootstrap-table.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/index/css/build.css">
    <link rel="stylesheet" href="/index/layui/css/layui.css">
    <!--引入jquery-->
    <script src="${pageContext.request.contextPath }/index/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <!--引入bootstrap.js-->
    <script src="${pageContext.request.contextPath }/index/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/index/js/bootstrap-table-zh-CN.js"></script>
    <script src="/index/layui/layui.js"></script>

</head>
<body>

<!-- ----------------------------以上用户添加详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel1">正式员工管理</h4>
            </div>
            <form class="layui-form" id="addUserUserRecord" style="width:680px; margin-left: 110px">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>人员基本信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工姓名:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入员工姓名"
                                                   id="userName1" name="userName" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工性别:</label>
                                        <div class="layui-input-inline">
                                            <input type="radio" id="gender11" name="gender" value="0" title="男" checked>
                                            <input type="radio" id="gender12" name="gender" value="1" title="女">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">出生日期:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="date" placeholder="请输入出生日期"
                                                       id="birthday1" name="birthdayString" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">员工年龄:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="根据出生日期自动计算"
                                                       readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件类型:</label>
                                            <div class="layui-input-inline">
                                                <input type="radio" name="userPapers" value="0" title="身份证"
                                                       checked>
                                                <input type="radio" name="userPapers" value="1" title="护照">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件号码:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入证件号码"
                                                       id="certificateNumber1" name="certificateNumber"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">最高学历:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入最高学历"
                                                       id="highestEducation1" name="highestEducation"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">政治面貌:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入政治面貌"
                                                       id="politicsStatus1" name="politicsStatus" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>人员部门信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">所属部门:</label>
                                        <div class="layui-input-inline">
                                            <select id="departmentId1" name="departmentId" lay-verify=""
                                                    lay-filter="gname">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职务:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职务"
                                                   id="duty1" name="duty" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职称:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职称"
                                                   id="titles1" name="titles" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职级:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职级"
                                                   id="rank" name="rank" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">入职时间:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="date" autocomplete="off"
                                                   id="createTime1" name="createTimeString"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工编号:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="员工编号自动生成"
                                                   id="userNum1" name="userNum" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>薪资及劳动保障信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">基本工资:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入基本工资"
                                                   id="basepay1" name="basepay" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">养老保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入养老保险"
                                                   id="oldInsurance1" name="oldInsurance" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">医疗保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入医疗保险"
                                                   id="medicalInsurance1" name="medicalInsurance" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">失业保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入失业保险"
                                                   id="unemploymentInsurance1" name="unemploymentInsurance"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">工伤保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入工伤保险"
                                                   id="workInsurance1" name="workInsurance" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">生育保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入生育保险"
                                                   id="accrueInsurance1" name="accrueInsurance" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">公积金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入公积金"
                                                   id="reservedFunds1" name="reservedFunds" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">企业年金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入企业年金"
                                                   id="enterpriseAnnuity" name="enterpriseAnnuity" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="addUserUserRecord()" class="btn btn-primary">提交</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户添加详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上用户详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px; margin-top: 50px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel2">人员档案管理</h4>
            </div>
            <form  id="UserRecordAllById" style="width:680px; margin-left: 110px">
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>人员基本信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工姓名:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入员工姓名"
                                                   id="userName2" name="userName" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工性别:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入员工姓名"
                                                   id="gender2" name="gender"  readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">出生日期:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入出生日期"
                                                       id="birthday2" name="birthday" readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">员工年龄:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="根据出生日期自动计算"
                                                       id="age2" name="age"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件类型:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text"
                                                       id="userPapers2" name="userPapers"  readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">证件号码:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入证件号码"
                                                       id="certificateNumber2" name="certificateNumber" readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">最高学历:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入最高学历"
                                                       id="highestEducation2" name="highestEducation" readonly="readonly"
                                                       autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:100px;">政治面貌:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="请输入政治面貌"
                                                       id="politicsStatus2" name="politicsStatus" readonly="readonly" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>人员部门信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">所属部门:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder=""
                                                   id="departmentName2" name="departmentName" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职务:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职务"
                                                   id="duty2" name="duty" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职称:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职称"
                                                   id="titles2" name="titles" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">职级:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入职级"
                                                   id="rank2" name="rank" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">入职时间:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" autocomplete="off"
                                                   id="createTime2" readonly="readonly" name="createTime"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">员工编号:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="员工编号自动生成"
                                                   id="userNum2" name="userNum" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>薪资及劳动保障信息</legend>
                        <div class="layui-field-box">
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">基本工资:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入基本工资"
                                                   id="basepay2" name="basepay" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">养老保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入养老保险"
                                                   id="oldInsurance2" name="oldInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">医疗保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入医疗保险"
                                                   id="medicalInsurance2" name="medicalInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">失业保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入失业保险"
                                                   id="unemploymentInsurance2" readonly="readonly" name="unemploymentInsurance"
                                                   autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">工伤保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入工伤保险"
                                                   id="workInsurance2" name="workInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">生育保险:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入生育保险"
                                                   id="accrueInsurance2" name="accrueInsurance" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-row">
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">公积金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入公积金"
                                                   id="reservedFunds2" name="reservedFunds" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-md6">
                                    <div class="layui-inline">
                                        <label class="layui-form-label" style="width:100px;">企业年金:</label>
                                        <div class="layui-input-inline">
                                            <input class="layui-input" type="text" placeholder="请输入企业年金"
                                                   id="enterpriseAnnuity2" name="enterpriseAnnuity" readonly="readonly" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>借调信息</legend>
                        <div class="layui-field-box">
                            <table id="secondMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
                <div class="layui-form-item">
                    <fieldset class="layui-elem-field">
                        <legend>转岗信息</legend>
                        <div class="layui-field-box">
                            <table id="transferMessageAlltable" class="table-striped table-hover"></table>
                        </div>
                    </fieldset>
                </div>
            </form>
            <div class="modal-footer">
                <button type="button" onclick="addUserUserRecord()" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户详情的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上用户编辑的模态框------------------------分割线----------------------------------开始------------------ ------->
<div class="modal fade" id="UpUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px;height: 660px;margin-top: 20px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="UpUser1">
                    编辑角色
                </h4>
            </div>

            <form id="UpdateUserRecord" class="layui-form" action="" style="margin-top: 20px">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>用户姓名:</b></label>
                        <div class="layui-input-inline" style="width: 200px">
                            <input type="text" id="userName_Up" name="userName" placeholder="请输入用户姓名"  required lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>登陆账号:</b></label>
                        <div class="layui-input-inline" style="width: 200px">
                            <input type="text" id="loginId_Up" name="loginId"  required lay-verify="required" placeholder="请输入登陆账号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>联系电话:</b></label>
                        <div class="layui-input-inline" style="width: 200px">
                            <input type="text" id="userPhone_Up" name="userPhone" required lay-verify="required" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>所属部门:</b></label>
                        <div class="layui-input-inline"   style="width: 200px">
                            <input type="text" id="departmentId_Up" placeholder="" required lay-verify="required" readonly="readonly" autocomplete="off" class="layui-input">

                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>电子邮箱:</b></label>
                        <div class="layui-input-inline" style="width: 200px">
                            <input type="text" id="userEmai_Up" name="userEmail" required lay-verify="required" placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <label class="layui-form-label" style="width: 120px"><b>状态:</b></label>
                        <div class="layui-input-inline" style="width: 200px">
                            <input type="text" id="userStatus_Up" required lay-verify="required" readonly="readonly"  autocomplete="off" class="layui-input">

                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:120px;"><b>所属部门:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <select id="departmentId3" name="departmentId" lay-verify=""
                                        lay-filter="gname">
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:120px;"><b>职务:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="text" placeholder="请输入职务"
                                       id="duty_Up" name="duty" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:120px;"><b>职称:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="text" placeholder="请输入职称"
                                       id="titles_Up" name="titles" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:120px;"><b>职级:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="text" placeholder="请输入职级"
                                       id="rank_Up" name="rank" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 120px"><b>备注详情:</b></label>
                            <div class="layui-input-inline" style="width: 460px">
                                <textarea id="comment_ck_Up" name="comment" required lay-verify="required" class="layui-textarea"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="UpdateUserRecord()" class="btn btn-primary">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- ----------------------------以上用户编辑的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上用户借调的模态框-------------------------分割线----------------------------------开始------------------ ------->

<div class="modal fade" id="JDmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px;" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="JDUser">
                    借调用户
                </h4>
            </div>

            <button type="button" onclick="JD()" class="btn btn-primary" style="margin-top: 10px;margin-left: 20px">新增借调</button>
            <table id="transferMessageAlltable1" class="table-striped table-hover" style="margin-top: 10px;margin-left:50px; width: 800px"></table>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<%-----------------------------------------------------新增借调---------------------------------------------------------%>
<div class="modal fade" id="JDmodal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width: 900px;height: 660px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                </button>
                <h4 class="modal-title" id="JDUser1">
                    填写新增借调信息
                </h4>
            </div>

            <form id="add_JD" class="layui-form" style="margin-top: 20px;" action="">
                <input id="fid" type="hidden">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:160px;"><b>所属部门:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="text" id="departmentId2_Up" readonly="readonly" autocomplete="off">
                                <input class="layui-input" type="hidden" id="UserId" name="userId" readonly="readonly" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:160px;"><b>借调时间:</b></label>
                            <div class="layui-input-inline" style="width:200px;">
                                <input class="layui-input" type="date" placeholder="请输入借调时间"
                                       id="secondTime" name="secondTime" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:160px;"><b>借调部门:</b></label>
                            <div class="layui-input-inline" style="width:200px;">
                                <select id="departmentId1_JD" name="departmentId" lay-verify=""
                                        lay-filter="gname">
                                </select>

                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:160px;"><b>借调天数（天）:</b></label>
                            <div class="layui-input-inline" style="width:200px;">
                                <input class="layui-input" type="text" placeholder="请输借调天数"
                                       id="secondDate"    name="secondDate" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="tj_JD211()" class="btn btn-primary">提交借调信息</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- ----------------------------以上用户借调的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上转岗的模态框-----------------------------分割线----------------------------------开始------------------ ------->

<div class="modal fade" id="ZGmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div  style="width: 900px;height: 660px"class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="ZGUser">
                    转岗用户
                </h4>
            </div>

            <button type="button" onclick="ZG()" class="btn btn-primary" style="margin-left: 50px;margin-top: 10px">新增转岗</button>
            <table id="transferMessageAlltable2" class="table-striped table-hover" style="margin-top: 10px;margin-left:50px; width: 800px"></table>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<%--新增转岗--%>
<div class="modal fade" id="ZGmodal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div style="width:800px;height: 660px" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="ZGUser1">
                    填写新增转岗信息
                </h4>
            </div>

            <form id="add_ZG" class="layui-form" action=""style="margin-top: 10px;margin-left: 100px">
                <input id="ZGId" type="hidden">
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:100px;"><b>所属部门:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="text" id="departmentId2_ZG" readonly="readonly" autocomplete="off">
                                <input class="layui-input" type="hidden" id="originalDepartment" name="originalDepartment" readonly="readonly" autocomplete="off">
                                <input class="layui-input" type="hidden" id="UserId_ZG" name="userId" readonly="readonly" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:100px;"><b>转岗时间:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <input class="layui-input" type="date" placeholder="请输入借调时间"
                                       id="secondTime_ZG" name="secondTime" autocomplete="off"/>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md6">
                        <div class="layui-inline">
                            <label class="layui-form-label" style="width:100px;"><b>转岗部门:</b></label>
                            <div class="layui-input-inline" style="width: 200px">
                                <select id="departmentId1_ZG" name="departmentId" lay-verify=""
                                        lay-filter="gname">
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="ZG_JD211()" class="btn btn-primary">提交转岗信息</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- ----------------------------以上转岗的模态框-----------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上用户的模糊查询-----------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="userLikeForm">
                <div style="width: 1600px;height: 60px">
                    <div class="form-group" style="margin-left: 300px">
                        <label for="userNum">员工编号:</label>
                        <input type="text" class="form-control" name="userNum" id="userNum" placeholder="员工编号"
                               style="width: 200px;margin-left: 20px">
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="userName">员工姓名:</label>
                        <input type="text" class="form-control" name="userName" id="userName"
                               placeholder="员工姓名"
                               style="width: 200px;margin-left: 20px">
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="departmentName">所属部门:</label>
                        <input type="text" class="form-control" name="departmentName" id="departmentName"
                               placeholder="所属部门名称"
                               style="width: 200px;margin-left: 20px">
                    </div>
                </div>
                <div style="width: 1600px;height: 60px;margin-left: 250px">
                    <div class="form-group" style="margin-left: 50px">
                        <label for="certificateNumber">证件编号:</label>
                        <input type="text" class="form-control" name="certificateNumber" id="certificateNumber"
                               placeholder="证件编号" style="width: 200px; margin-left:20px">
                    </div>
                    <div class="form-group" style="margin-left: 20px">
                        <label for="userStatus" style="margin-left: 30px">员工状态:</label>
                        <select class="form-control" name="userStatus" id="userStatus"
                                style="width: 200px; margin-left:20px">
                            <option value="">请选择</option>
                            <option value="0">在职</option>
                            <option value="1">离职</option>
                            <option value="2">退休</option>
                        </select>
                    </div>
                    <div class="form-group" style="margin-left: 50px">
                        <label for="duty">职务名称:</label>
                        <input type="text" class="form-control" name="duty" id="duty" placeholder="职务名称"
                               style="width: 200px;margin-left: 20px">
                    </div>
                </div>
                <div style="width: 200px;height: 60px;margin-left: 1250px;margin-top: -88px">
                    <div class="form-group" style="margin-left:60px">
                        <button type="button" onclick="userLike()" class="btn btn-primary">提交</button>

                        <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">
                            重置
                        </button>
                    </div>
                </div>
                <div style="width: 300px;height: 60px;margin-top: -70px">
                    <div class="form-group" style="margin-left: 100px">
                        <button type="button" onclick="addUserUserRecordMyModal()" class="btn btn-primary btn-lg">员工入职
                        </button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上角色模糊查询-----------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="userTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#userLikeForm").get(0).reset();
        $("#userTable").bootstrapTable('destroy')
        userAll();
    }

    //提交模糊查询
    function userLike() {
        $.ajax({
            type: "post",
            data: $('#userLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#userTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        userAll();
    });

    /*------------------以上所有用户的table表格-------------------------分割线-------------------开始------------------------------*/
    function userAll() {
        $("#userTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/findUserRecordAll",
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "序号",
                    field: 'id',
                    align: 'center' // 居中显示
                }, {
                    title: "员工编号",
                    field: 'userNum',
                    align: 'center' // 居中显示
                }, {
                    title: "员工姓名",
                    field: 'userName',
                    align: 'center' // 居中显示
                },
                {
                    title: "部门编号",
                    field: 'departmentNum',
                    align: 'center' // 居中显示
                }, {
                    title: "员工部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "员工职务",
                    field: 'duty',
                    align: 'center' // 居中显示
                }, {
                    title: "证件编号",
                    field: 'certificateNumber',
                    align: 'center' // 居中显示
                }, {
                    title: "入职时间",
                    field: 'createTime',
                    align: 'center' // 居中显示
                }, {
                    title: "离退休时间",
                    field: 'retireTime',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'userStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 0) {
                            return "在职";
                        }
                        if (row.userStatus == 1) {
                            return "离职";
                        }
                        if (row.userStatus == 2) {
                            return "退休";
                        }
                    }
                }, {
                    title: "员工操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.userStatus == 0) {
                            return "<a class='btn btn-primary' onclick='UserRecordAllById(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                "<a class='btn btn-success' onclick='UpdateUserRecordMyModal(" + row.id + ")' role='button' >编辑</a>&nbsp;" +
                                "<a class='btn btn-info'    onclick='jieDiaoUserRecordMyModal(" + row.id + ")' role='button' >借调</a>&nbsp;" +
                                "<a class='btn btn-warning' onclick='jieYongUserRecordMyModal(" + row.id + ")' role='button' >调用</a>&nbsp;" +
                                "<a class='btn btn-danger'  onclick='liZhiUserRecordMyModal(" + row.id + ")' role='button' >离职</a>&nbsp;" +
                                "<a class='btn btn-default' onclick='tuiXiuUserRecordMyModal(" + row.id + ")' role='button' >退休</a>&nbsp;";
                        } else if (row.userStatus == 1) {
                            return "<a class='btn btn-primary' onclick='findUserRecordById(" + row.id + ")' role='button'>查看</a>";
                        } else if (row.userStatus == 2) {
                            return "<a class='btn btn-primary' onclick='findUserRecordById(" + row.id + ")' role='button'>查看</a>";
                        }
                    }
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }

    /*------------------以上所有用户的table表格-------------------------分割线-------------------结束------------------------------*/

    /*------------------用户信息添加------------------ --------------------分割线-------------------开始------------------------------*/

    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    //添加用户模态框展示
    function addUserUserRecordMyModal() {
        $("#myModal1").modal("show");

        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId1").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId1").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })

    }

    //添加用户
    function addUserUserRecord() {

            var birthdayString = $("#birthday1").val();
            var createTimeString = $("#createTime1").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/addUserUserRecord?birthdayString"+birthdayString+ "&createTimeString=" + createTimeString,
            data: $('#addUserUserRecord').serialize(),
            dataType: "json",
            success: function (data) {
                if (data) {
                    alert("添加用户成功！！")
                    document.getElementById("addUserUserRecord").reset();
                    window.location.reload();
                } else {
                    alert("添加用户失败（查看填写信息是否有误）！！")
                }
            }
        })
    }

    /*------------------用户信息添加------------------ --------------------分割线-------------------结束------------------------------*/


       /*------------------用户详情------------------ --------------------分割线-------------------开始------------------------------*/

    //用户详情模态框展示
    document.getElementById("UserRecordAllById").reset();
    function UserRecordAllById(id) {
        $("#myModal2").modal("show");
        $("#id").val(id);
        $.ajax({
            type: 'post',
            data: {id: id},
            url: '/UserController/userAllById',
            success: function (data) {
                //查看回显
                $("#userName2").val(data.userName);
                if (data.gender == 0) {
                    $("#gender2").val("男");
                } else {
                    $("#gender2").val("女");
                }
                $("#birthday2").val(data.birthday);
                $("#age2").val(data.age);
                if (data.userPapers == 0) {
                    $("#userPapers2").val("身份证");
                } else {
                    $("#userPapers2").val("护照");
                }

                $("#certificateNumber2").val(data.certificateNumber);
                $("#highestEducation2").val(data.highestEducation);
                $("#politicsStatus2").val(data.politicsStatus);
                $("#departmentName2").val(data.departmentName);
                $("#duty2").val(data.duty);
                $("#titles2").val(data.titles);
                $("#rank2").val(data.rank);
                $("#createTime2").val(data.createTime);
                $("#userNum2").val(data.userNum);
                $("#basepay2").val(data.basepay);
                $("#oldInsurance2").val(data.oldInsurance);
                $("#medicalInsurance2").val(data.medicalInsurance);
                $("#unemploymentInsurance2").val(data.unemploymentInsurance);
                $("#workInsurance2").val(data.workInsurance);
                $("#accrueInsurance2").val(data.accrueInsurance);
                $("#reservedFunds2").val(data.reservedFunds);
                $("#enterpriseAnnuity2").val(data.enterpriseAnnuity);
            }
        })
        //借调信息
        secondMessageAll();
        //转岗信息
        transferMessageAll();

    }

    //借调信息
    function secondMessageAll() {
        $("#secondMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#secondMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/secondMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "所属部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "借调信息",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "借调时间",
                    field: 'secondTime',
                    align: 'center' // 居中显示
                },
                {
                    title: "借调期限（天）",
                    field: 'secondDate',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    //转岗信息
    function transferMessageAll() {
        $("#transferMessageAlltable").bootstrapTable('destroy');
        var id = $("#id").val();
        $("#transferMessageAlltable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/transferMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "原部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗时间",
                    field: 'transferTime',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }


    /*------------------用户详情------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------用户编辑------------------ --------------------分割线-------------------开始------------------------------*/
    //编辑
    function UpdateUserRecordMyModal(id) {
        $("#id").val(id);
        $("#UpUser").modal("show")
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/UserController/userAllById?id="+id,
            dataType:"json",
            success:function (data) {
                if (data!=null){
                    $("#userName_Up").val(data.userName)//用户姓名
                    $("#loginId_Up").val(data.loginId)//登陆账号
                    $("#userPhone_Up").val(data.userPhone)//联系电话
                    $("#departmentId_Up").val(data.departmentName)//所属部门
                    $("#userEmai_Up").val(data.userEmail)//邮箱
                    $("#departmentId1_Up").val(data.departmentName)//所属部门
                    $("#duty_Up").val(data.duty)//职务
                    $("#titles_Up").val(data.titles)//职称
                    $("#rank_Up").val(data.rank)//职级
                    //状态 0在职  1离职  2退休 3临时在职  4激活 5不激活
                    if (data.userStatus==0){
                        $("#userStatus_Up").val("在职")
                    }else if (data.userStatus==1) {
                        $("#userStatus_Up").val("离职")
                    }else if (data.userStatus==2) {
                        $("#userStatus_Up").val("退休")
                    }else if (data.userStatus==3) {
                        $("#userStatus_Up").val("临时在职")
                    }else if (data.userStatus==4) {
                        $("#userStatus_Up").val("已激活")
                    }else if (data.userStatus==5) {
                        $("#userStatus_Up").val("未激活")
                    }
                    //状态
                    $("#comment_ck_Up").html(data.comment)//备注
                }else {
                    alert("查询失败")
                }
            }
        })
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId3").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId3").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }
    function UpdateUserRecord() {
        var id = $("#id").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/UpdateUserRecord?id="+id,
            data: $('#UpdateUserRecord').serialize(),
            dataType: "json",
            success: function (data) {
                if (data>0) {
                    alert("编辑用户成功！！")
                    document.getElementById("UpdateUserRecord").reset();
                    window.location.reload();
                } else {
                    alert("编辑用户失败（查看填写信息是否有误）！！")
                }
            }
        })
    }
    /*------------------用户编辑------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------用户借调------------------ --------------------分割线-------------------开始------------------------------*/

    function jieDiaoUserRecordMyModal(id) {
        $("#JDmodal").modal("show");
        $("#fid").val(id);
        //借调信息
        transferMessageAll1();
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/UserController/userAllById?id="+id,
            dataType:"json",
            success:function (data) {
                if (data!=null){
                    $("#departmentId2_Up").val(data.departmentName)//所属部门
                }else {
                    alert("查询失败")
                }
            }
        })
    }
    function JD() {
        $("#JDmodal1").modal("show");
        $("#id").val(id);
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId1_JD").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    };
                    $("#departmentId1_JD").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }

    //转岗信息
    function transferMessageAll1() {
        $("#transferMessageAlltable1").bootstrapTable('destroy');
        var id = $("#fid").val();
        $("#transferMessageAlltable1").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/secondMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "所属部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "借调信息",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "借调时间",
                    field: 'secondTime',
                    align: 'center' // 居中显示
                },
                {
                    title: "借调期限（天）",
                    field: 'secondDate',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }

    //添加借调信息
    function tj_JD211() {
        var userId=$("#fid").val();
        var departmentId=$("#departmentId1_JD").val();
        var secondTime=$("#secondTime").val();
        var secondDate=$("#secondDate").val();
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/JDuser?userId="+userId+"&departmentId="+departmentId+"&secondTime="+secondTime+"&secondDate="+secondDate,
            dataType: "json",
            success: function (data) {
                if (data>0) {
                    alert("添加借调成功！！")
                    $("#JDmodal1").modal("hide");
                    document.getElementById("add_JD").reset();
                    transferMessageAll1();
                } else {
                    alert("添加借调失败（查看填写信息是否有误）！！")
                }
            }
        })
    }

    /*------------------用户借调------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------用户调用------------------ --------------------分割线-------------------开始------------------------------*/

    function jieYongUserRecordMyModal(id) {
        $("#ZGmodal").modal("show");
        $("#ZGId").val(id);
        transferMessageAll2();
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/UserController/userAllById?id="+id,
            dataType:"json",
            success:function (data) {
                if (data!=null){
                    $("#departmentId2_ZG").val(data.departmentName)//所属部门
                    $("#originalDepartment").val(data.departmentId)//所属部门

                }else {
                    alert("查询失败")
                }
            }
        })
    }
        function ZG() {
            $("#ZGmodal1").modal("show");
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/UserController/departmentAll",
                dataType: "json",
                success: function (data) { // ajax提交成功调用success方法
                    if (data.length > 0) {
                        $("#departmentId1_ZG").empty();
                        var options = "<option value='0' checked>-请选择-</option>";
                        for (var i = 0; i < data.length; i++) {
                            options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                        };
                        $("#departmentId1_ZG").append(options);
                        layui.form.render('select');
                    } else {
                        alert("查询部门失败")
                    }
                }
            })
        }
    function ZG_JD211() {
        var userId=$("#ZGId").val();//id
        var transferTime=$("#secondTime_ZG").val();//时间
        var departmentId=$("#departmentId1_ZG").val();//转岗部门
        var originalDepartment=$("#originalDepartment").val();//原部门id

       /* alert("用户id"+userId+"转岗部门"+departmentId+"时间"+transferTime+"原部门id"+originalDepartment)*/
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/ZGuser?userId="+userId+"&departmentId="+departmentId+"&transferTime="+transferTime+"&originalDepartment="+originalDepartment,
            dataType: "json",
            success: function (data) {
                if (data>0) {
                    alert("转岗成功！！")
                    $("#ZGmodal1").modal("hide");
                    document.getElementById("add_ZG").reset();
                    transferMessageAll2();
                } else {
                    alert("转岗失败（查看填写信息是否有误）！！")
                }
            }
        })
    }

    //转岗信息
    function transferMessageAll2() {
        $("#transferMessageAlltable2").bootstrapTable('destroy');
        var id = $("#ZGId").val();
        $("#transferMessageAlltable2").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/UserController/transferMessageAll?id="+id,
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 15, 20], // 设置页面可以显示的数据条数
            pageSize: 10, // 页面数据条数
            pageNumber: 1, // 首页页码
            sidePagination: 'client', // 设置为服务器端分页server   前端分页： client
            sortName: 'id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            columns: [
                {
                    title: "原部门",
                    field: 'udept',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗部门",
                    field: 'departmentName',
                    align: 'center' // 居中显示
                }, {
                    title: "转岗时间",
                    field: 'transferTime',
                    align: 'center' // 居中显示
                }
            ],
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        })
    }
    /*------------------用户调用------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------用户离职------------------ --------------------分割线-------------------开始------------------------------*/
    function liZhiUserRecordMyModal(id) {
        if (window.confirm("是否确认离职?")) {
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/liZhiUser?id="+id,
            dataType: "json",
            success: function (data) {
                if (data>0) {
                    alert("员工已离职！！")
                    window.location.reload();
                } else {
                    alert("离职失败（查看填写信息是否有误）！！")
                }
            }
        })
        }
    }

    /*------------------用户离职------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------用户退休------------------ --------------------分割线-------------------开始------------------------------*/
    function tuiXiuUserRecordMyModal(id) {
        if (window.confirm("是否确认退休?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/UserController/tuiXiuUser?id="+id,
                dataType: "json",
                success: function (data) {
                    if (data>0) {
                        alert("员工已离职！！")
                        window.location.reload();
                    } else {
                        alert("离职失败（查看填写信息是否有误）！！")
                    }
                }
            })
        }
    }
    /*------------------用户退休------------------ --------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
