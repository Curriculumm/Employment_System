<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/search/area.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/search/location.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/search/select2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/search/select2_locale_zh-CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.touchSlider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ks-switch.pack.js"></script>
</head>

<body class="zc_bg">
    <!-- top内容开始 -->
    <div class="top" style="height: 100px">
        <div class="top_bg">
            <div class="top_bga">
                <div class="top_bga_1"></div>
                <div class="top_bga_2">
                    <ul>
                        <a href="">
                            <li></li>
                        </a>
                        <a href="">
                            <li></li>
                        </a>
                        <a href="">
                            <li></li>
                        </a>
                        <a href="">
                            <li></li>
                        </a>

                        </a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- top内容结束 -->
    <div class="center_blank"></div>
    <!-- 公告和介绍开始  -->
    <!-- 公告和介绍结束  -->
    <!-- 内容开始 -->
    <div class="nr">
        <div class="bzz">
            <div class="center_gga">
                <div class="center_gga_1">&nbsp;登&nbsp;&nbsp;陆</div>
            </div>
            <div class="zc_a">
                <div class="zc_left"><img src="images/7.jpg" usemap="#Map" border="0" />
                    <map name="Map" id="Map">
                        <area shape="rect" coords="67,37,98,66" href="#" />
                        <area shape="rect" coords="111,36,146,65" href="#" />
                        <area shape="rect" coords="162,37,190,66" href="#" />
                    </map>
                </div>
                <form action="/userLogin" method="post">
                               登陆失败
                    <div class="zc_right">

                    <div class="item_c">
                        <label>用户名</label>
                    </div>
                    <div class="item">
                        <input type="text" name="account"/>
                    </div>
                    <div class="item_c">
                        <label>密&nbsp;码：</label>
                    </div>
                    <div class="item">
                        <input type="password" name="password"/>
                    </div>

                    <input class="item_b" type="submit" src="images/dl.jpg" >

                </div>
                </form>
            </div>
        </div>
        <!-- 友情链接开始 -->
        <div class="blank"></div>
        <div class="link">
            <div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
            <div class="link_b">
                <ul>
                    <li><a href=""><img src="images/link_pic.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic2.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic3.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic4.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic2.jpg" /></a></li>
                    <li><a href=""><img src="images/link_pic3.jpg" /></a></li>
                </ul>
            </div>
        </div>
        <!-- 友情链接结束 -->
        <!-- 底部内容开始 -->
        <div class="blank"></div>
        <div class="blank"></div>
        <div class="button">
            <a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">商务合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">网站声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="">联系方式</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">服务中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">加入我们</a>
            <br /> 版权所有©三门峡模板网2014-2020 模板网 豫88888888号 <a href="#/" target="_blank">web前端设计</a>
        </div>
        <!-- 底部内容结束 -->
    </div>
    <!-- 内容结束 -->
    <!-- alpha div -->
    <div id="maskLayer" style="display:none;">
        <iframe id="maskLayer_iframe" frameBorder=0 scrolling=no style="filter:alpha(opacity=50)"></iframe>
        <div id="alphadiv" style="filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5"></div>
        <div id="drag">
            <h3 id="drag_h"></h3>
            <div id="drag_con"></div>
            <!-- drag_con end -->
        </div>
    </div>
    <!-- maskLayer end -->
    </div>
    <!-- alpha div end -->
</body>

</html>