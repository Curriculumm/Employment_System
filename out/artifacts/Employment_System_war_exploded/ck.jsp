<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>高校毕业就职网</title>
    <link href="css/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/search/area.js"></script>
    <script type="text/javascript" src="js/search/location.js"></script>
    <script type="text/javascript" src="js/search/select2.js"></script>
    <script type="text/javascript" src="js/search/select2_locale_zh-CN.js"></script>
    <script type="text/javascript" src="js/jquery.touchSlider.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/ks-switch.pack.js"></script>
</head>

<body class="bft_bg">

<!-- top内容开始 -->
<div class="top">
    <div class="top_bg">
        <div class="top_bga">
            <div class="top_bga_1"></div>
            <div class="top_bga_2">
                <ul>
                    <a href="bz.html">
                        <li>个人中心</li>
                    </a>
                </ul>
            </div>
        </div>
    </div>
</div>


<div class="nr">
    <!-- 帮众开始 -->
    <div class="blank"></div>
    <div class="bfs_search">

        <!-- 搜索内容开始 -->
        <div class="bfs_search1">
            <div class="bfs_search_blank"></div>
            <script type="text/javascript">
                function diy_select() { this.init.apply(this, arguments) };
                diy_select.prototype = {
                    init: function(opt) {
                        this.setOpts(opt);
                        this.o = this.getByClass(this.opt.TTContainer, document, 'div'); //容器
                        this.b = this.getByClass(this.opt.TTDiy_select_btn); //按钮
                        this.t = this.getByClass(this.opt.TTDiy_select_txt); //显示
                        this.l = this.getByClass(this.opt.TTDiv_select_list); //列表容器
                        this.ipt = this.getByClass(this.opt.TTDiy_select_input); //列表容器
                        this.lengths = this.o.length;
                        this.showSelect();
                    },
                    addClass: function(o, s) //添加class
                    {
                        o.className = o.className ? o.className + ' ' + s : s;
                    },
                    removeClass: function(o, st) //删除class
                    {
                        var reg = new RegExp('\\b' + st + '\\b');
                        o.className = o.className ? o.className.replace(reg, '') : '';
                    },
                    addEvent: function(o, t, fn) //注册事件
                    {
                        return o.addEventListener ? o.addEventListener(t, fn, false) : o.attachEvent('on' + t, fn);
                    },
                    showSelect: function() //显示下拉框列表
                    {
                        var This = this;
                        var iNow = 0;
                        this.addEvent(document, 'click', function() {
                            for (var i = 0; i < This.lengths; i++) {
                                This.l[i].style.display = 'none';
                            }
                        })
                        for (var i = 0; i < this.lengths; i++) {
                            this.l[i].index = this.b[i].index = this.t[i].index = i;
                            this.t[i].onclick = this.b[i].onclick = function(ev) {
                                var e = window.event || ev;
                                var index = this.index;
                                This.item = This.l[index].getElementsByTagName('li');

                                This.l[index].style.display = This.l[index].style.display == 'block' ? 'none' : 'block';
                                for (var j = 0; j < This.lengths; j++) {
                                    if (j != index) {
                                        This.l[j].style.display = 'none';
                                    }
                                }
                                This.addClick(This.item);
                                e.stopPropagation ? e.stopPropagation() : (e.cancelBubble = true); //阻止冒泡
                            }
                        }
                    },
                    addClick: function(o) //点击回调函数
                    {

                        if (o.length > 0) {
                            var This = this;
                            for (var i = 0; i < o.length; i++) {
                                o[i].onmouseover = function() {
                                    This.addClass(this, This.opt.TTFcous);
                                }
                                o[i].onmouseout = function() {
                                    This.removeClass(this, This.opt.TTFcous);
                                }
                                o[i].onclick = function() {
                                    var index = this.parentNode.index; //获得列表
                                    This.t[index].innerHTML = This.ipt[index].value = this.innerHTML.replace(/^\s+/, '').replace(/\s+&/, '');
                                    This.l[index].style.display = 'none';
                                }
                            }
                        }
                    },
                    getByClass: function(s, p, t) //使用class获取元素
                    {
                        var reg = new RegExp('\\b' + s + '\\b');
                        var aResult = [];
                        var aElement = (p || document).getElementsByTagName(t || '*');

                        for (var i = 0; i < aElement.length; i++) {
                            if (reg.test(aElement[i].className)) {
                                aResult.push(aElement[i])
                            }
                        }
                        return aResult;
                    },

                    setOpts: function(opt) //以下参数可以不设置  //设置参数
                    {
                        this.opt = {
                            TTContainer: 'diy_select', //控件的class
                            TTDiy_select_input: 'diy_select_input', //用于提交表单的class
                            TTDiy_select_txt: 'diy_select_txt', //diy_select用于显示当前选中内容的容器class
                            TTDiy_select_btn: 'diy_select_btn', //diy_select的打开按钮
                            TTDiv_select_list: 'diy_select_list', //要显示的下拉框内容列表class
                            TTFcous: 'focus' //得到焦点时的class
                        }
                        for (var a in opt) //赋值 ,请保持正确,没有准确判断的
                        {
                            this.opt[a] = opt[a] ? opt[a] : this.opt[a];
                        }
                    }
                }


                var TTDiy_select = new diy_select({ //参数可选
                    TTContainer: 'diy_select', //控件的class
                    TTDiy_select_input: 'diy_select_input', //用于提交表单的class
                    TTDiy_select_txt: 'diy_select_txt', //diy_select用于显示当前选中内容的容器class
                    TTDiy_select_btn: 'diy_select_btn', //diy_select的打开按钮
                    TTDiv_select_list: 'diy_select_list', //要显示的下拉框内容列表class
                    TTFcous: 'focus' //得到焦点时的class
                }); //如同时使用多个时请保持各class一致.
            </script>
            <!--   -->
            <div class="bft_f">
                <div class="bft_f_1">
                    <ul>
                        <li>职位需求</li>
                        <li>姓名</li>
                        <li>学校</li>
                        <li>联系方式</li>
                        <li></li>
                    </ul>
                </div>
                <c:forEach items="${recruitList}" varStatus="s" var="recruit">
                    <div class="bft_f_2">
                        <ul>
                            <li><span>${recruit.companyname}</span></li>
                            <li>${personalInformationList.get(s.index).name}</li>
                            <li>${personalInformationList.get(s.index).school}</li>
                            <li>${personalInformationList.get(s.index).communication}</li>
                            <li><a href="/deleteApplicationByRID?RID=${applicationList.get(s.index).RID}"><img src="/images/pz.png" /></a></li>
                        </ul>
                    </div>
                </c:forEach>


            <!--   -->
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
        <div class="submenu"></div>
        <!-- 搜索内容结束 -->
    </div>
    <!-- 帮众结束 -->
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
