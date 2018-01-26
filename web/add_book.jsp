<%-- 
    Document   : add_book
    Created on : 2018-1-18, 9:19:37
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

    <head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="wap-font-scale" content="no" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>add books page</title>
        <link rel="stylesheet" type="text/css" href="rcms/www/lasttemp/css/site_global.css?4052507572" />
        <link rel="stylesheet" type="text/css" href="rcms/www/lasttemp/css/pages.css" id="pagesheet" />

        <link rel="stylesheet" type="text/css" href="rcms/www/lasttemp/css/few_pages.css" />
        <link rel="icon" href="rcms/www/t_logo.ico" type="image/x-icon" />


        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet">
        <script src="jquery-3.2.1.min.js"></script>
        <script src="bootstrap.min.js"></script>


        <!-- 读取系统时间 -->
        <SCRIPT language=JavaScript>
            function tick() {
                var years, months, days, hours, minutes, seconds;
                var intYears, intMonths, intDays, intHours, intMinutes, intSeconds;
                var today;
                today = new Date(); //系统当前时间
                intYears = today.getFullYear(); //得到年份,getFullYear()比getYear()更普适
                intMonths = today.getMonth() + 1; //得到月份，要加1
                intDays = today.getDate(); //得到日期
                intHours = today.getHours(); //得到小时 
                intMinutes = today.getMinutes(); //得到分钟
                intSeconds = today.getSeconds(); //得到秒钟
                years = intYears + "年";

                if (intMonths < 10) {
                    months = "0" + intMonths + "月";
                } else {
                    months = intMonths + "月";
                }
                if (intDays < 10) {
                    days = "0" + intDays + "日 ";
                } else {
                    days = intDays + "日 ";
                }
                if (intHours == 0) {
                    hours = "00:";
                } else if (intHours < 10) {
                    hours = "0" + intHours + ":";
                } else {
                    hours = intHours + ":";
                }
                if (intMinutes < 10) {
                    minutes = "0" + intMinutes + ":";
                } else {
                    minutes = intMinutes + ":";
                }
                if (intSeconds < 10) {
                    seconds = "0" + intSeconds + " ";
                } else {
                    seconds = intSeconds + " ";
                }
                timeString = years + months + days + hours + minutes + seconds;
                Clock.innerHTML = timeString;
                window.setTimeout("tick();", 1000);
            }
            window.onload = tick;
        </SCRIPT>


    </head>

    <body>
        <script>
            $("#nav-lv1").click(function (e) {
                e.preventDefault();
                $(this).tab("show");
            })
        </script>

        <div class="user-box">
            <div class="channel_nav">
                <ul id="nav-lv1" class="nav-lv1">

                    <li class="active">
                        <a href="#" title="首页" alt="首页" target="_self">首页</a>
                    </li>
                    <li>
                        <a href="test.html" title="资源" alt="资源" target="_self">资源</a>
                        <ul>
                            <li>
                                <a href="#" target="_self">实体资源</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" title="服务" alt="服务" target="_self">服务</a>
                        <ul>
                            <li>
                                <a href="#" target="_self">服务指南</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" title="关于我们" alt="关于我们" target="_self">关于我们</a>
                        <ul>
                            <li>
                                <a href="#" target="_self">广图概况</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div id="lv2box" class="nav-lv2">
                    <div class="scrollNav">
                        <a id="n_left" href="javascript:;" class="nav_left">△</a>
                        <div id="navslv2" class="nav-box">
                            <ul class="nav-menu-scroll">

                            </ul>

                        </div>
                        <a id="n_right" href="javascript:;" class="nav_right">▽</a>
                    </div>

                </div>
                <div class="nav-breadcrumb">
                    <div class="w960">
                        <div class="breadcrumb">
                            您现在的位置是：
                            <a href="#">首页</a> &gt;
                            <a href="/member/index.jspx">我的空间</a> &gt;
                            <span style="color: #38b4e6">个人资料</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row no-gutter">
                <div class="col-20">
                    <div class="user-head-box">
                        <a style="margin-top: 0px;width: 30px;">
                            <img src="userimage/bear.jpg" alt="头像" class="head_img" />
                        </a>
                    </div>
                </div>
                <div class="col-80">
                    <div class="user-info">
                        <span class="orange">欢迎您:</span>
                        <i class="usericon-user">用户</i>
                        <span>司博文 </span>
                        <a href="javascript:;" id="logout_user" class="urser-logout">[退出]</a>
                        <i class="usericon-msg">消息</i>
                        <a>你有
                            <span class='orange'>
                                <span id="countDiv"></span>
                            </span> 条未读信息</a>
                        <label class="float-r">
                            <i class="usericon-call">日期</i>
                            <span id="Clock"></span>
                        </label>
                    </div>

                    <div class="user-nav">
                        <ul id="usernav" class="user-nav-lv1 clearfix">
                            <!-- 个人中心 -->
                            <li id="msps">
                                <a href="javascript:;">
                                    <i class=""></i> 个人中心

                                </a>
                            </li>
                            <!-- 借阅服务 -->
                            <li id="msjy">
                                <a href="test.html">
                                    <i class=""></i> 借阅服务

                                </a>
                            </li>


                            <li id="msqt"  class="cur">
                                <a href="javascript:;">
                                    <i class=""></i> 管理图书馆
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="channel-title user-title">

            <form>

                <i class="c-icon ui1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i>
                <label class="ut1">书本
                    <span class="text-blue">资料</span>
                </label>
            </form>

        </div>



        <!-- 栏目标题end -->

        <!-- 个人资料 -->
        <form method="POST" action="/NetBeansLMS/AddBookServlet" enctype="multipart/form-data">
            <div class="userinfobox">
                <div class="row no-gutter">
                    <div class="col-25 text-r"></div>
                    <div class="col-75"></div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">书本图片：</div>
                    <div class="form-group">
                        <div class="col-70">
                            <input type="file" style="width:400px" class="form-control" name="book_img" required>
                        </div>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">书本名：</div>
                    <div class="col-70">
                        <input type="text" class="form-control" style="width:400px" placeholder="请输入书本的名称" name="book_name" required>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">ISBN：</div>
                    <div class="col-70">
                        <input type="text" class="form-control" style="width:400px" placeholder="请输入书本的ISBN" name="book_isbn" required>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">出版时间：</div>
                    <div class="col-70">
                        <input type="date" class="form-control" style="width:400px" placeholder="请输入书本的出版时间" name="book_date" required>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">作者：</div>
                    <div class="col-70">
                        <input type="text" class="form-control" style="width:400px" placeholder="请输入书本的作者" name="book_author" required>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">书本分类： </div>
                    <div class=" col-70">
                        <select class="form-control" data-ng-value="请输入书本的分类" style="width:400px" name="book_category" required>
                            <option>文学类</option>
                            <option>计算机类</option>
                            <option>会计类</option>
                            <option>其他</option>
                        </select>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">单价： </div>
                    <div class="col-70">
                        <input type="text" class="form-control" style="width:400px" placeholder="请输入书本的单价" name="book_price" required>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-30 text-r">出版社： </div>
                    <div class="col-70">
                        <input type="text" class="form-control" style="width:400px" placeholder="请输入书本的出版社" name="book_publisher" required>
                    </div>
                </div>

                <div class="row no-gutter">
                    <div class="col-30 text-r">书本简介： </div>
                    <div class="col-70">
                        <textarea  name="book_introduction" id="" cols="30" rows="3" style="width:400px" placeholder="请输入书本的简介" required></textarea>
                    </div>
                </div>


                <div class="row no-gutter">
                    <div class="col-40 text-r">
                        <input type="submit" class="btn btn-primary" style="width:100px;"value="添加">
                    </div>
                    <div class="col-20"></div>
                    <div class="col-40">
                        <button type="button" class="btn btn-primary" style="width:100px;">Cancel</button>
                    </div>
                </div>
                <div class="row no-gutter">
                    <div class="col-25 text-r"> </div>
                    <div class="col-75"></div>
                </div>
            </div>
        </form>
        <!-- 个人资料end -->

    </div>
</div>
</div>

</div>

</body>

</html>
