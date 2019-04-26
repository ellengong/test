<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
		<div class="navbar navbar-default" id="navbar" style="height:50px;">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
				
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							校友系统后台管理中心
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">


						<li class="light-blue">
							<a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
								<img class="nav-user-photo" src="images/header.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>你好</small>
									${user}
								</span>
								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

								<li class="divider"></li>

								<li>
									<a href="{:U('Admin/logout')}">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>