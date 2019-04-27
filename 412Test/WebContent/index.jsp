<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="dist/css/font-awesome.min.css" />
    <link rel="stylesheet" href="dist/css/ace-fonts.css" />
    <link rel="stylesheet" href="dist/css/ace.min.css" />
    <link rel="stylesheet" href="dist/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="dist/css/ace-skins.min.css" />


    <link rel="stylesheet" href="dist/bootstrap/css/yeti.min.css" />
    <link rel="stylesheet" href="dist/bootstrap/Font-Awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="dist/css/common.css" />

    <link rel="stylesheet" href="dist/css/ace.min.css" />
    <script type="text/javascript" src="dist/bootstrap/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="dist/bootstrap/js/bootstrap.min.js"></script>
    <script src="dist/js/ace-extra.min.js"></script>
</head>
<body>

<%@ include file = "header.jsp" %>
<style>td,th{text-align:center;}</style>
 <%@include file = "sideBar.jsp" %>
 
<div class="page-content">

        <!-- <div class="col-xs-2"></div> -->
       
        <div class="col-xs-10">
            <div class="row">

                <form action="" method="get" id="formuser" style="margin-left:20px;">

                   <select name="userlevel" id="userlevel">
                        <option value="">请选择用户届别</option>
                        <option value="1">2002</option>
                        <option value="2">2003</option>
                        <option value="3">2004</option>
                    </select>
                    <select name="usertype" id="usertype">
                        <option value="">请选择用户专业</option>
                        <option value="1">计算机</option>
                        <option value="2">物联网</option>
                        <option value="3">信息管理</option>
                    </select>
                    <select name="userstatus" id="userstatus">
                        <option value="">请选择用户状态</option>
                        <option value="0">0-未认证</option>
                        <option value="1">1-申请认证</option>
                        <option value="2">2-认证通过</option>                      
                        <option value="5">5-认证失败</option>
                        <option value="5">6-缴费失败</option>
                    </select>
                    <input type="submit" value="查  询" class="btn btn-primary btn-xs" style="margin-left:30px;margin-top:0px;">
                </form>

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <form action="" method="post" id="batchform" >
                            <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>
                                        <label>
                                            <input type="checkbox" class="ace" id='check_all'/>
                                            <span class="lbl">全选</span>
                                        </label>
                                    </th>
                                    <th>序号</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>毕业年份</th>
                                    <th>专业</th>
                                    <th>职业</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tfoot>
                                <tr>
                                    <td colspan="16">
                                        <div class="modal-footer no-margin-top" id='ys'>
                                            {$page}
                                        </div>
                                        <div class="clear"></div>
                                    </td>
                                </tr>
                                </tfoot>

                                <tbody>
                                <notempty name="users">
                                    <volist name="users" id="user">
                                        <tr>
                                            <td>
                                                <label>
                                                    <input type="checkbox" class="ace" name="id[]"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td>{$i}</td>
                                            <td>{$user['username']}</td>
                                            <td>{$user['fullname']}</td>
                                            <td>
                                                <switch name="user.userlevel">
                                                     <case value="1">1星用户</case>
                                                    <case value="2">2星用户</case>
                                                    <case value="3">3星用户</case>
                                                 </switch>
                                            </td>
                                            <td>
                                                <switch name="user.usertype">

                                                    <case value="1">个人用户</case>
                                                    <case value="2">企业用户</case>
                                                    <case value="3">专家用户</case>
                                                    <case value="4">企业联系人</case>
                                                </switch>
                                            </td>
                                            <td>
                                                <eq name="user.devtype" value="1">
                                                    å¼åå
                                                </eq>
                                                <eq name="user.sptype" value="1">
                                                    æå¡å
                                                </eq>
                                            </td>
                                            <td>
                                            <switch name="user.status">
                                                 <case value="0">未认证</case>
                                                <case value="1">申请认证</case>
                                                <case value="2">认证通过</case>                                         
                                                <case value="5">认证失败</case>
                                             
                                            </switch>
                                            </td>
                                            <td style="text-align:left;">
                                                &nbsp;&nbsp;&nbsp;
                                               <a href="javascript:;" onclick="del_data('{:U('delete',array('id'=>$user['userid']))}')" class="btn btn-primary btn-xs icon-remove">
                                                    <i ></i>
                                                   	 删除
                                                </a>
                                                <a href="" class="btn btn-warning btn-xs icon-hand-right">详细</a>
                                            </td>
                                        </tr>

                                    </volist>
                                    <else />
                                    <tr><td colspan="16">ææ æ°æ®</td></tr>
                                </notempty>
                                </tbody>
                            </table>
                            
                            <!--åé¡µæ¡-->
                            <ul class="pagination">
                                <li><a href="index?page=1">&laquo;</a></li>
                                <volist name="pagers" id="pager">
                                    <li><a href="index?page={$pager}">{$pager}</a></li>
                                </volist>
                                <li><a href="index?page={$pageCount}">&raquo;</a></li>

                            </ul>
                        </form>
                    </div>


                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->

</div><!-- /.main-content -->
</div><!-- /.main-container-inner -->
</div><!-- /.main-container -->
<include file="Pub:footer" />
<script>

</script>
</body>