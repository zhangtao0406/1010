<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--
        基础设施档案
    --%>
    <meta charset="utf-8">
    <title>基础设施档案</title>
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

<!-- ----------------------------以上基础设施档案添加的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel1">基础设施档案新增:</h4>
                </div>
                <form class="layui-form" id="addInfrastructure" style="width:750px; margin-left: 110px" enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施档案添加</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设施名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施名称"
                                                       id="infrastructureName2" name="infrastructureName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">状态:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施状态默认使用中"
                                                       readonly="readonly" id="infrastructureStatus2" name="infrastructureStatus" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">价格:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施价格"
                                                           id="price2" name="price" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="departmentId_TJ" name="departmentId" lay-verify=""
                                                                lay-filter="gname">
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施负责人"
                                                           id="principal2" name="principal" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人电话:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="principalPhone2" name="principalPhone"  placeholder="负责人电话"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备类型:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="facilityId_TJ" name="facilityId" lay-verify=""
                                                                lay-filter="gname">
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备位置:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="location2" name="location" placeholder="设备位置" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">经度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="经度"
                                                           id="longitude2" name="longitude"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">纬度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="纬度"
                                                           id="dimension2" name="dimension"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">维护周期:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="维护周期"
                                                           id="maintainPeriod2" name="maintainPeriod"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">下次维护时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="date"
                                                           id="nextMaintain2" name="nextMaintainString"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">注意事项:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="announcements2" name="announcements" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">添加图片:</label>
                                                <div class="layui-input-inline">
                                                    <input type="file" name="pictureFile" placeholder="基础设施图片可多上传..."  class="layui-input" multiple="multiple" >
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="addInfrastructure()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上基础设施档案添加的模态框-------------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上基础设施档案编辑修改的模态框---------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">基础设施档案编辑:</h4>
                </div>
                <form class="layui-form" id="InfrastructureUpdateMyModal" style="width:750px; margin-left: 110px" enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施档案添加</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设施名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施名称"
                                                       id="infrastructureName3" name="infrastructureName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">价格:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施价格"
                                                       id="price3" name="price" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">目前状态:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施状态默认使用中"
                                                           readonly="readonly" id="infrastructureStatus3"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">状态:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select class="form-control" name="infrastructureStatus" id="infrastructureStatus_up"
                                                                style="width: 180px;">
                                                            <option value="">请选择</option>
                                                            <option value="0">使用中</option>
                                                            <option value="1">维护中</option>
                                                            <option value="2">停用</option>
                                                            <option value="3">报废</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人部门:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="负责人部门"
                                                           id="departmentName3" name="departmentName" readonly="readonly"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <select id="departmentId_up" name="departmentId" lay-verify=""
                                                                readonly="readonly"  lay-filter="gname">
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施负责人"
                                                           id="principal3" name="principal" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人电话:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="principalPhone3" name="principalPhone"  placeholder="负责人电话"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备类型:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <input class="layui-input" type="text" placeholder="负责人部门"
                                                               id="facilityName3" name="facilityName" readonly="readonly"  autocomplete="off"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备类型:</label>
                                                <div class="layui-input-inline">
                                                    <select id="facilityId_up" name="facilityId" name="facilityName" lay-verify=""
                                                            lay-filter="gname">
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备位置:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="location3" name="location" placeholder="设备位置" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">经度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="经度"
                                                           id="longitude3" name="longitude"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">纬度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="纬度"
                                                           id="dimension3" name="dimension"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">维护周期:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="维护周期"
                                                           id="maintainPeriod3" name="maintainPeriod"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">下次维护时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           readonly="readonly" id="nextMaintain3"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">下次维护时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="date"
                                                           id="nextMaintain_up" name="nextMaintainString"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">注意事项:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="announcements3" name="announcements" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" onclick="updateInfrastructure()" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上基础设施档案编辑修改的模态框---------------------分割线----------------------------------结束------------------ ------->
<!-- ----------------------------以上基础设施档案详情的模态框------------------------分割线----------------------------------开始------------------ ------->
<div>
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 900px; margin-top: 50px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel3">基础设施档案详情:</h4>
                </div>
                <form class="layui-form" style="width:750px; margin-left: 110px" enctype="multipart/form-data">
                    <div class="layui-form-item">
                        <fieldset class="layui-elem-field">
                            <legend>基础设施档案详情</legend>
                            <div class="layui-field-box">
                                <div class="layui-row">
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">设施名称:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施名称"
                                                       id="infrastructureName4" name="infrastructureName" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-col-md6">
                                        <div class="layui-inline">
                                            <label class="layui-form-label" style="width:120px;">状态:</label>
                                            <div class="layui-input-inline">
                                                <input class="layui-input" type="text" placeholder="设施状态默认使用中"
                                                       readonly="readonly" id="infrastructureStatus4" name="infrastructureStatus" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">价格:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施价格"
                                                           id="price4" name="price" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人部门:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <input class="layui-input" type="text" placeholder="负责人部门"
                                                               id="departmentName4" name="departmentName" readonly="readonly"  autocomplete="off"/>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="设施负责人"
                                                           id="principal4" name="principal" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">负责人电话:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="principalPhone4" name="principalPhone"  placeholder="负责人电话"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备类型:</label>
                                                <div class="layui-input-inline">
                                                    <div class="layui-input-inline" style="width: 190px">
                                                        <input class="layui-input" type="text" placeholder="负责人部门"
                                                        id="facilityName4" name="facilityName" readonly="readonly"  autocomplete="off"/>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">设备位置:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text"
                                                           id="location4" name="location" placeholder="设备位置" autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">经度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="经度"
                                                           id="longitude4" name="longitude"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">纬度:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="纬度"
                                                           id="dimension4" name="dimension"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">维护周期:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="text" placeholder="维护周期"
                                                           id="maintainPeriod4" name="maintainPeriod"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width:120px;">下次维护时间:</label>
                                                <div class="layui-input-inline">
                                                    <input class="layui-input" type="date"
                                                           id="nextMaintain4" name="nextMaintainString"  autocomplete="off"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md12">
                                            <div class="layui-inline">
                                                <label class="layui-form-label" style="width: 120px">注意事项:</label>
                                                <div class="layui-input-inline">
                                                    <textarea style="width: 515px" id="announcements4" name="announcements" required lay-verify="required" class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="layui-row">
                                        <div class="layui-col-md6">
                                            <div class="layui-inline">
                                                <label class="layui-form-label"style="width: 120px">图片名称:</label>
                                                <div class="layui-input-inline" id="accessoryName4">
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ----------------------------以上基础设施档案详情的模态框-------------------------分割线----------------------------------结束------------------ ------->

<!-- ----------------------------以上基础设施档案的模糊查询---------------------------分割线----------------------------------开始------------------ ------->
<div class="tab-content">
    <div class="tab-pane active" id="panel-429484">
        <div style="margin-top: 20px">
            <form class="form-inline" id="InfrastructureLikeForm">
                <div class="form-group" style="margin-left:20px;margin-left: 60px">
                    <button type="button" onclick="addInfrastructureMyModal()" class="btn btn-primary btn-lg">添加档案</button>
                </div>
                <div class="form-group"  style="margin-left: 60px">
                    <label for="infrastructureName1">设施名称:</label>
                    <input type="text" class="form-control" name="infrastructureName" id="infrastructureName1" placeholder="设施名称"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="maintainPeriod1">维护周期:</label>
                    <input type="text" class="form-control" name="maintainPeriod" id="maintainPeriod1"
                           placeholder="维护周期"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="facilityName1">设施类型:</label>
                    <input type="text" class="form-control" name="facilityName" id="facilityName1" placeholder="设施类型"
                           style="width: 180px;">
                </div>
                <div class="form-group" style="margin-left: 20px">
                    <label for="infrastructureStatus1">培训状态:</label>
                    <select class="form-control" name="infrastructureStatus" id="infrastructureStatus1"
                            style="width: 180px;">
                        <option value="">请选择</option>
                        <option value="0">使用中</option>
                        <option value="1">维护中</option>
                        <option value="2">停用</option>
                        <option value="3">报废</option>
                    </select>
                </div>

                <div class="form-group" style="margin-left:60px">
                    <button type="button" onclick="InfrastructureLike()" class="btn btn-primary">提交</button>

                    <button type="button" onclick="resetLike(0)" class="btn btn-default" style="margin-left: 20px">重置
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- ----------------------------以上基础设施档案的模糊查询---------------------------分割线----------------------------------结束------------------ ------->

<br><br>
<table id="InfrastructureTable" class="table-striped table-hover"></table>
</div>
<script type="text/javascript">

    //重置模糊查询
    function resetLike() {
        $("#InfrastructureLikeForm").get(0).reset();
        $("#InfrastructureTable").bootstrapTable('destroy')
        InfrastructureAll();
    }

    //提交模糊查询
    function InfrastructureLike() {
        $.ajax({
            type: "post",
            data: $('#InfrastructureLikeForm').serialize(),
            url: "${pageContext.request.contextPath}/InfrastructureController/findInfrastructureAll",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    //重新加载表格
                    $("#InfrastructureTable").bootstrapTable('load', data);
                }
            }
        })
    }

    $(function () {
        InfrastructureAll();
        departmentAll();
        facilityAll();
    });

    /*------------------以上所有基础设施档案的table表格-------------------------分割线-------------------开始------------------------------*/
    function InfrastructureAll() {
        $("#InfrastructureTable").bootstrapTable({ // 对应table标签的id
            url: "${pageContext.request.contextPath}/InfrastructureController/findInfrastructureAll",
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
                    title: "设施名称",
                    field: 'infrastructureName',
                    align: 'center' // 居中显示
                }, {
                    title: "设施类型",
                    field: 'facilityName',
                    align: 'center' // 居中显示
                }, {
                    title: "维护时间",
                    field: 'nextMaintain',
                    align: 'center' // 居中显示
                }, {
                    title: "维护周期",
                    field: 'maintainPeriod',
                    align: 'center' // 居中显示
                }, {
                    title: "状态",
                    field: 'infrastructureStatus',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.infrastructureStatus == 0) {
                            return "使用中";
                        }
                        if (row.infrastructureStatus == 1) {
                            return "维护中";
                        }
                        if (row.infrastructureStatus == 2) {
                            return "停用";
                        }
                        if (row.infrastructureStatus == 3) {
                            return "报废";
                        }
                    }
                }, {
                    title: "基础设施档案操作",
                    field: 'id',
                    align: 'center',// 居中显示
                    formatter: function (value, row, index) {
                        if (row.infrastructureStatus == 0) {
                            return  "<a class='btn btn-success' onclick='InfrastructureAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                    "<a class='btn btn-info' onclick='InfrastructureUpdateMyModal(" + row.id + ")' role='button' >修改</a>";
                        } else if (row.infrastructureStatus == 1) {
                            return  "<a class='btn btn-success' onclick='InfrastructureAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                    "<a class='btn btn-info' onclick='InfrastructureUpdateMyModal(" + row.id + ")' role='button' >修改</a>";
                        } else if (row.infrastructureStatus == 2) {
                            return  "<a class='btn btn-success' onclick='InfrastructureAllByIdMyModal(" + row.id + ")' role='button' >查看</a>&nbsp;" +
                                    "<a class='btn btn-info' onclick='InfrastructureUpdateMyModal(" + row.id + ")' role='button' >修改</a>";
                        } else if (row.infrastructureStatus == 3) {
                            return  "<a class='btn btn-success' onclick='InfrastructureAllByIdMyModal(" + row.id + ")' role='button' >查看</a>";
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

    /*------------------以上所有基础设施档案的table表格-------------------------分割线-------------------结束------------------------------*/
    /*------------------基础设施档案添加------------------ --------------------分割线-------------------开始------------------------------*/

    layui.use(['form', 'layedit', 'laydate'], function () {

    });
    //富文本
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('demo'); //建立编辑器
    });

    //添加基础设施档案模态框展示
    function addInfrastructureMyModal() {
        $("#myModal1").modal("show");
    }

    //下拉框
    function departmentAll() {
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId_TJ").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId_TJ").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }
    //下拉框
    function facilityAll() {
        //下拉基础设施类型
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/InfrastructureController/facilityAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#facilityId_TJ").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].facilityName + "</option>";
                    }
                    ;
                    $("#facilityId_TJ").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })

    }

    //添加基础设施档案
    function addInfrastructure() {
        var nextMaintainString = $("#nextMaintain2").val();
        var form = new FormData(document.getElementById("addInfrastructure"));
        $.ajax({
            url:"${pageContext.request.contextPath}/InfrastructureController/addInfrastructureAndAccessory?nextMaintainString="+nextMaintainString, //要处理的页面
            data: form, //要传过去的数据$('#addInfrastructure').serialize()
            type: "POST", //提交方式
            processData: false,
            contentType: false,
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if(data) {
                    alert("添加成功");
                    document.getElementById("addInfrastructure").reset();
                    window.location.reload();
                } else {
                    alert("添加失败");
                }
            }
        });
    }

    /*------------------基础设施档案添加------------------ --------------------分割线-------------------结束------------------------------*/

    /*------------------基础设施档案修改------------------ --------------------分割线-------------------开始------------------------------*/
    //基础设施档案修改
    function InfrastructureUpdateMyModal(id) {
        //下拉框展示部门
        departmentAllUpdate();
        //下拉基础设施类型
        facilityAllUpdate();
        $("#id").val(id);
        $("#myModal2").modal("show")
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/InfrastructureController/InfrastructureById?id="+id,
            dataType:"json",
            success:function (data) {
                if (data!=null){
                    $("#infrastructureName3").val(data.infrastructureName)
                    $("#price3").val(data.price)
                    if (data.infrastructureStatus==0){
                        $("#infrastructureStatus3").val("使用中")
                    }else if (data.infrastructureStatus==1) {
                        $("#infrastructureStatus3").val("维护中")
                    }else if (data.infrastructureStatus==2) {
                        $("#infrastructureStatus3").val("停用")
                    }else if (data.infrastructureStatus==3) {
                        $("#infrastructureStatus3").val("报废")
                    }
                    $("#departmentName3").val(data.departmentName)
                    $("#principal3").val(data.principal)
                    $("#principalPhone3").val(data.principalPhone)
                    $("#facilityName3").val(data.facilityName)
                    $("#location3").val(data.location)
                    $("#longitude3").val(data.longitude)
                    $("#dimension3").val(data.dimension)
                    $("#maintainPeriod3").val(data.maintainPeriod)
                    $("#nextMaintain3").val(data.nextMaintain)
                    $("#announcements3").val(data.announcements)
                }else {
                    alert("查询失败")
                }
            }
        })
    }
    //下拉框
    function departmentAllUpdate() {
        //下拉框展示部门
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/UserController/departmentAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#departmentId_up").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].departmentName + "</option>";
                    }
                    ;
                    $("#departmentId_up").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })
    }
    //下拉框
    function facilityAllUpdate() {
        //下拉基础设施类型
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/InfrastructureController/facilityAll",
            dataType: "json",
            success: function (data) { // ajax提交成功调用success方法
                if (data.length > 0) {
                    $("#facilityId_up").empty();
                    var options = "<option value='0' checked>-请选择-</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].id + "'>" + data[i].facilityName + "</option>";
                    }
                    ;
                    $("#facilityId_up").append(options);
                    layui.form.render('select');
                } else {
                    alert("查询部门失败")
                }
            }
        })

    }


    //编辑基础设施档案
    function updateInfrastructure() {
        var id = $("#id").val();
        var nextMaintainString = $("#nextMaintain_up").val();
        var form = new FormData(document.getElementById("InfrastructureUpdateMyModal"));
        $.ajax({
            url:"${pageContext.request.contextPath}/InfrastructureController/updateInfrastructure?id="+id+"&nextMaintainString=" + nextMaintainString, //要处理的页面
            data: form, //要传过去的数据$('#addInfrastructure').serialize()
            type: "POST", //提交方式
            processData: false,
            contentType: false,
            dataType: "JSON", //返回的数据类型，TEXT字符串 JSON返回JSON XML返回XML；dataType中T要大写！！
            success: function(data) { //回调函数，data为形参，是从login-cl.php页面返回的值
                if(data) {
                    alert("修改成功");
                    document.getElementById("InfrastructureUpdateMyModal").reset();
                    window.location.reload();
                } else {
                    alert("修改失败");
                }
            }
        });
    }

    /*------------------基础设施档案修改------------------ --------------------分割线-------------------结束------------------------------*/
    /*------------------以上基础设施档案详情-----------------------------------分割线-------------------开始------------------------------*/
    var num = 0;
    function InfrastructureAllByIdMyModal(id) {
        $("#myModal3").modal("show");
        $("#id").val(id);
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/InfrastructureController/InfrastructureById?id=" + id,
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    $("#infrastructureName4").val(data.infrastructureName)
                    $("#price4").val(data.price)
                    if (data.infrastructureStatus == 0) {
                        $("#infrastructureStatus4").val("使用中")
                    } else if (data.infrastructureStatus == 1) {
                        $("#infrastructureStatus4").val("维护中")
                    } else if (data.infrastructureStatus == 2) {
                        $("#infrastructureStatus4").val("停用")
                    } else if (data.infrastructureStatus == 3) {
                        $("#infrastructureStatus4").val("报废")
                    }
                    $("#departmentName4").val(data.departmentName)
                    $("#principal4").val(data.principal)
                    $("#principalPhone4").val(data.principalPhone)
                    $("#facilityName4").val(data.facilityName)
                    $("#location4").val(data.location)
                    $("#longitude4").val(data.longitude)
                    $("#dimension4").val(data.dimension)
                    $("#maintainPeriod4").val(data.maintainPeriod)
                    $("#nextMaintain4").val(data.nextMaintain)
                    $("#announcements4").val(data.announcements)
                } else {
                    alert("查询失败")
                }
            }
        })

    //根据id查询基础设施档案图片
    $.ajax({
        type: 'post',
        data: {id: id},
        url: '/InfrastructureController/infrastructureAndAccessoryAllById',
        success: function (data) {
            $("#accessoryName4").empty();
            for (var a = 0; a < data.length; a++) {
                $("#accessoryName4").append("<input style='margin-top:5px' type=\"text\" id=\"accessoryName4" + num + "\" readonly=\"readonly\" name=\"accessoryName\" value=" + data[a].accessoryName + " placeholder=\"上传附件\" class=\"layui-input\">")
                num++;
            }
        }
    })
    }
    /*------------------以上基础设施档案详情-----------------------------------分割线-------------------结束------------------------------*/

</script>
<input type="hidden" id="id">
</body>
</html>
