<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!--菜单栏开始-->
<div class="main-container" id="main-container">
        <script type="text/javascript">
            try{ace.settings.check('main-container' , 'fixed')}catch(e){}
        </script>

        <div class="main-container-inner">
            <a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>

            <div class="sidebar" id="sidebar">
                <script type="text/javascript">
                    try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
                </script>

                <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                    <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<!--  -->
                        <a href="javascript:;" title="" class="btn btn-success">
                            <i class="icon-user"></i>
                        </a>

                        <a href="javascript:;" title="" class="btn btn-info">
                            <i class="icon-th"></i>
                        </a>

                        <a href="javascript:;" title="" class="btn btn-warning">
                            <i class="icon-th-large"></i>
                        </a>

                        <a href="javascript:;" title="" class="btn btn-danger">
                            <i class="icon-star"></i>
                        </a>
                    </div>
					<!--  
                    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                        <span class="btn btn-success"></span>

                        <span class="btn btn-info"></span>

                        <span class="btn btn-warning"></span>

                        <span class="btn btn-danger"></span>
                    </div>-->
                </div><!-- #sidebar-shortcuts -->

                <ul class="nav nav-list">

                    <li class='active open'>
                        <a href="#" class="dropdown-toggle">
                            <i class="icon-home"></i>
                            <span class="menu-text">首页</span>
                        </a>
                    </li>

                    <li class='active open'>
                        <a href="#" class="dropdown-toggle">
                            <i class="icon icon-user"></i>
                            <span class="menu-text">校友信息</span>
                            
                            <b class="arrow icon-angle-down"></b>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="{:U('User/index')}">
                                    <i class="icon-double-angle-right"></i>
                                    审核用户资质
                                </a>
                            </li>

                            <li>
                                <a href="{:U('User/paylist')}">
                                    <i class="icon-double-angle-right"></i>
                                    用户支付审核
                                </a>
                            </li>
                            <li>
                                <a href="{:U('User/expert')}">
                                    <i class="icon-double-angle-right"></i>
                                    专家管理
                                </a>
                            </li>
                            <li>
                                <a href="{:U('User/service')}">
                                    <i class="icon-double-angle-right"></i>
                                    服务商管理
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class='active'>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon icon-th-large"></i>
                        <span class="menu-text">项目管理</span>
                        
                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                        <a href="{:U('Project/index')}">
                            <i class="icon-double-angle-right"></i>
                            项目列表
                        </a>
                        </li>
                        <li>
                            <a href="{:U('Project/checklist')}">
                                <i class="icon-double-angle-right"></i>
                                分配专家审核
                            </a>
                        </li>

                        <li>
                            <a href="{:U('PMPType/index')}">
                                <i class="icon-double-angle-right"></i>
                                项目附件类型
                            </a>
                        </li>

                    </ul>
                </li>


                    <li class='<eq name="module_name" value="DLHIndex">active</eq>'>
                        <a href="javascript:;" class="dropdown-toggle">
                            <i class="icon icon-th-large"></i>
                            <span class="menu-text">度量衡指标</span>
                           
                            <b class="arrow icon-angle-down"></b>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="{:U('DLHIndex/indextype')}">
                                    <i class="icon-double-angle-right"></i>
                                    指标分类
                                </a>
                            </li>
                            <li>
                                <a href="{:U('DLHIndex/index')}">
                                    <i class="icon-double-angle-right"></i>
                                    指标列表
                                </a>
                            </li>
                            <li>
                                <a href="{:U('DLHIndex/floorratio')}">
                                    <i class="icon-double-angle-right"></i>
                                    楼层系数
                                </a>
                            </li>
                            <li>
                                <a href="{:U('DLHIndex/property')}">
                                    <i class="icon-double-angle-right"></i>
                                      物业类型
                                </a>
                            </li>

                            <li>
                                <a href="{:U('DLHIndex/dlhcost')}">
                                    <i class="icon-double-angle-right"></i>
                                    城市指标
                                </a>
                            </li>

                        </ul>
                    </li>


                    <li class='<eq name="module_name" value="Admin">active</eq>'>
                        <a href="javascript:;" class="dropdown-toggle">
                            <i class="icon icon-user"></i>
                            <span class="menu-text">系统管理</span>
                            <span class="badge badge-success">1</span>
                            <b class="arrow icon-angle-down"></b>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="{:U('Admin/lists')}">
                                    <i class="icon-double-angle-right"></i>
                                    管理员管理
                                </a>
                            </li>
							<li>
                                <a href="{:U('Admin/newslist')}">
                                    <i class="icon-double-angle-right"></i>
                                    新闻管理
                                </a>
                            </li>

                        </ul>
                    </li>


                </ul>
                <!--菜单栏结束-->


                <!--位置信息开始-->
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                </div>

                <script type="text/javascript">
                    try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
                </script>
            </div>
            <div class="main-content">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                    </script>

                    <ul class="breadcrumb">
                    	<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">控制台</li>
                    </ul>

                </div>
                <!--位置信息结束-->




            </div>
        </div>
</div>