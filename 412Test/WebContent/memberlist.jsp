<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.wz.pojo.Member"%>
<!DOCTYPE html>
<head>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。 
	pageContext.setAttribute("basePath", basePath);
	%>

    <link href="${pageScope.basePath}dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/ace-fonts.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/ace.min.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/ace-skins.min.css" />


    <link rel="stylesheet" href="${pageScope.basePath}dist/bootstrap/css/yeti.min.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/bootstrap/Font-Awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageScope.basePath}dist/css/common.css" />

    <link rel="stylesheet" href="${pageScope.basePath}dist/css/ace.min.css" />
    <script type="text/javascript" src="${pageScope.basePath}dist/bootstrap/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageScope.basePath}dist/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageScope.basePath}dist/js/ace-extra.min.js"></script>
    <style>td,th{text-align:center;}</style>
     <%
	List<Member> listInfo = (List<Member>) request.getAttribute("list");
%>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

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
                                    <th>毕业年份</th>
                                    <th>专业</th>
                                    <th>单位</th>
                                    <th>职业</th>
                                    <th>手机</th>
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
                                
                                 <%
								if (null != listInfo) {

									for (int i = 0; i < listInfo.size(); i++) {
								%>
                                    
                                        <tr>
                                            <td>
                                                <label>
                                                    <input type="checkbox" class="ace" name="id[]"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td><%=i+1 %></td>
                                            <td><%=listInfo.get(i).getName()%></td>
                                            
                                            <td>
                                                <%=listInfo.get(i).getEnterYear()%>
                                            </td>
                                            <td>
                                                <%=listInfo.get(i).getMajor()%>
                                            </td>
                                            <td><%=listInfo.get(i).getCompany() %></td>
                                            <td>
                                               <%=listInfo.get(i).getJob()%>
                                            </td>
                                            <td>
                                          		 <%=listInfo.get(i).getPhoneNumber() %>
                                            </td>
                                            <td style="text-align:left;">
                                                &nbsp;&nbsp;&nbsp;
                                               <a href="javascript:;" onclick="" class="btn btn-primary btn-xs icon-remove">
                                                    <i ></i>
                                                   	 删除
                                                </a>
                                                <a href="" class="btn btn-warning btn-xs icon-hand-right">详细</a>
                                            </td>
                                        </tr>

                                <% } }
								else{
                                %>
                                    <tr><td colspan="16">暂无数据</td></tr>
                                <% } %>
                               
                                </tbody>
                            </table>
                            
                            <!--分页条-->
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