<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <title>瑞腾教育培训中心</title>
  <style type="text/css">
    *{
      margin:0;
      padding:0;
    }
    .nav{
      width:1200px;
      height:30px;
      margin:0 auto;
      background-color:#eee;
    }
    ul{
      list-style:none;
    }
    ul li{
      float:left;
      line-height:30px;
      text-align:center;
      background-color: yellow;
      position:relative;/*给一级菜单一个相对定位*/
    }
    a{
      text-decoration:none;
      color:#000;
      display:block;
      padding:0 10px;
    }
    a:hover{
      color:floralwhite;
      background-color:blue;
    }
    ul li ul{
      position:absolute;/*给二级菜单一个绝对定位，防止一级菜单被二级菜单给撑开*/
      left:0;
      top:30px;
      display:none;   /*先让二级菜单消失*/
    }
    ul li ul li{
      float:none;/*因为二级菜单默认继承一级菜单的样式，所以我们需要取消浮动*/
      background-color:#eee;
      margin-top:2px;
    }
    /*单独设置二级菜单的样式*/
    ul li ul li a:hover{
      background-color:red;
    }

    span{
      color: darkgray;
      font-size: xx-large;
      font-family: 华文行楷,serif;
    }

    .header{
      margin:auto;
      background-color: #408080;
      height: 25px;
      width: 100%;
    }
    .text{
      color:#ffffff;
    }
    .header a{
      display: block;
      height: 25px;
      width: 100px;
      background-color: #7b4267;
      text-decoration: none;
      line-height: 25px;
      text-align: center;
      float: right;
    }
    .header a:hover{
      background:#ff8080;
    }

    #content {
      height: 250px;
      width: 100%;
      background-color: #FFf;
    }
    #content_left {
      background-color: #0080ff;
      height: 250px;
      width: 400px;
      float: left;
    }
    #content_mid {
      background-color: #80ff80;
      height: 250px;
      width: 400px;
      float: left;
    }
    #content_right {
      background-color: #ff8080;
      height: 250px;
      width: 400px;
      float: left;
    }
  </style>

  <script type="text/javascript">
    function ShowMenu(li){
      let submenu = li.getElementsByTagName("ul")[0];
      submenu.style.display = "block"; /*使用js代码来控制二级菜单的显示和隐藏*/
    }
    function HideMenu(li){
      let submenu = li.getElementsByTagName("ul")[0];
      submenu.style.display = "none";
    }
  </script>
  <link rel="shortcut icon" href="images/5.jpg">
  <script type="text/javascript">
    //加入收藏
    function AddFavorite(sURL, sTitle) {
      sURL = encodeURI(sURL);
      try {
        window.external.addFavorite(sURL, sTitle);
      } catch (e) {
        try {
          window.sidebar.addPanel(sTitle, sURL, "");
        } catch (e) {
          alert("加入收藏失败,请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");
        }
      }
    }
    //设为首页
    function SetHome(url) {
      if (document.all) {
        document.body.style.behavior = 'url(#default#homepage)';
        document.body.setHomePage(url);
      } else {
        alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!");
      }
    }
  </script>
</head>

<body>
<div class="header">
  <a  onclick="SetHome('http://localhost:8080/webapp/mainpage.html')"
      href="javascript:void(0)" title="设为首页" style="color:white;size: 30px;">设为首页</a>
  <a  onclick="AddFavorite('http://localhost:8080/webapp/mainpage.html','瑞腾教育培训中心')"
      href="javascript:void(0)"title="加入收藏"style="color:white;size: 30px;">加入收藏</a>
</div>
<iframe src="images/5.jpg" height="51px" width="51px"></iframe>
<span><b>瑞腾教育培训中心</b></span><br/>
  <div class="nav">
    <ul>
      <li><a href="index.html">首页</a></li>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>关于我们</a>

        <ul>
          <li><a href="gywm/wmss.html">我们是谁</a></li>
          <li><a href="gywm/jyln.html">教育理念</a></li>
          <li><a href="gywm/jxys.html">教学优势</a></li>
        </ul>
      </li>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>新闻资讯</a>
        <ul>
          <li><a href="xwzx/xyfc.html">学员风采</a></li>
          <li><a href="xwzx/jxcg.html">教学成果</a></li>
          <li><a href="xwzx/gjzc.html">国家政策</a></li>
          <li><a href="xwzx/glzd.html">管理制度</a></li>
        </ul>
      </li>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>培训课程</a>
        <ul>
          <li><a href="pxkc/javajckc.html">java基础</a></li>
          <li><a href="pxkc/javagjkc.html">java高级</a></li>
          <li><a href="pxkc/javaweb.html">javaWeb</a></li>
          <li><a href="pxkc/mysqljckc.html">MySQL基础</a></li>
          <li><a href="pxkc/mysqlgjkc.html">MySQL高级</a></li>
          <li><a href="pxkc/jdbc.html">JDBC核心</a></li>
        </ul>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>校园展示</a>
        <ul>
          <li><a href="xyzs/yxgl.html">运行管理</a></li>
          <li><a href="xyzs/xkgl.html">选课管理</a></li>
          <li><a href="xyzs/xlcx.html">校历查询</a></li>
        </ul>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>名师风采</a>
        <ul>
          <li><a href="mszs/zs.html">张三</a></li>
          <li><a href="mszs/ls.html">李四</a></li>
          <li><a href="mszs/ww.html">王五</a></li>
        </ul>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>家长社区</a>
        <ul>
          <li><a href="jzsq/jzyj.html">家长意见</a></li>
          <li><a href="jzsq/xsyj.html">学生意见</a></li>
        </ul>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>联系我们</a>
        <ul>
          <li><a href="lxwm/whxq.html">武汉校区</a></li>
          <li><a href="lxwm/dxq.html">东校区</a></li>
          <li><a href="lxwm/xxq.html">西校区</a></li>
        </ul>

      <li onmouseover="ShowMenu(this)" onmouseout="HideMenu(this)">
        <a>网上报名</a>
        <ul>
          <li><a href="wsbm/bmlc.html">报名流程</a></li>
          <li><a href="wsbm/jflc.html">缴费流程</a></li>
          <li><a href="apply.html" target="_block">网上报名</a></li>
        </ul>
    </ul>
  </div>
<div  align="center" >
  <img id="imag1"src="images/3.jpg"style="width: 100%;height: 430px;">
</div>
<div id="content">

    <div id="content_left">
      <img src="" alt="">
      <p>姓名：诸葛亮</p>
      <p>简介：诸葛亮（181年—234年10月8日），字孔明，号卧龙，琅琊阳都（今山东沂南）人 ，三国时期蜀汉丞相，杰出的政治家、军事家、文学家、书法家、发明家。</p>
      <p>联系方式：18772059999</p>
    </div>

    <div id="content_mid">
        <img src="" alt="">
        <p>姓名：孔子</p>
        <p>简介：孔子（公元前551年9月28日－公元前479年4月11日），子姓，孔氏，名丘，字仲尼，中国古代思想家、教育家，儒家学派创始人</p>
        <p>联系方式：15971879999</p>
    </div>

    <div id="content_right">
        <img src="" alt="">
        <p>姓名：大帅哥</p>
        <p>简介：帅的掉渣</p>
        <p>联系方式：1362559999</p>
    </div>
</div>
</body>
</html>


