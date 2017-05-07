<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="finalCSS/css/bootstrap.min.css">
    <link href="finalCSS/css/nav.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/colrank.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/css/lbt.css" rel='stylesheet' type='text/css' />
    <link href="finalCSS/font-awesome-4.7.0/css/font-awesome.min.css" rel='stylesheet' type='text/css' />
    <script src="finalCSS/js/jquery.min.js"></script>
    <script src="finalCSS/js/cbs.js"></script>
    <script src="finalCSS/js/lbt.js"></script>
    <script src="finalCSS/js/bootstrap.min.js"></script>
</head>
<body>

<div class="slider">
    <jsp:include page="up.jsp"/>
    <ul class="slider-main">
        <li class="slider-panel">
            <img  src="images/房间.jpg">
        </li>
        <li class="slider-panel">
            <img  src="images/两本书.jpg">
        </li>
        <li class="slider-panel">
            <img  src="images/简约房.jpg">
        </li>
    </ul>
    <div class="slider-extra">
        <ul class="slider-nav">
            <li class="slider-item"> </li>
            <li class="slider-item"> </li>
            <li class="slider-item"> </li>
        </ul>
        <div class="slider-page">
            <a class="slider-pre" href="javascript:;;"></a>
            <a class="slider-next" href="javascript:;;"></a>
        </div>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-0">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-1" data-toggle="tab">关于我们</a>
                    </li>
                    <li>
                        <a href="#panel-2" data-toggle="tab">联系我们</a>
                    </li>
                    <li>
                        <a href="#panel-3" data-toggle="tab">友情链接</a>
                    </li>
                </ul>
                <div class="gywmands">
                    <div class="tab-content">
                        <div class="tab-pane gywm active" id="panel-1">
                            <h4>关于我们</h4>
                            <hr/>
                            <p>
                                预知愿是一个专为高考生提供的大学志愿填报辅助平台，在这里您可以了解到高校招生信息和专业详细信息，
                                更可以与亲爱的学长学姐实时互动，另外，还有权威的高校在校老师为您答疑解惑哦！
                            </p><br/><br/>
                            <p>我们是上海理工大学大三学生，为创建这个web网站组建成三人的小团队：USST BCNF。
                                作为三个女生，在短短的一个月内做成预知愿，我们付出了很多，希望亲爱的您能喜欢。
                            </p>
                        </div>
                        <div class="tab-pane lxwm" id="panel-2">
                            <h4>联系我们</h4>
                            <hr/>
                            <p>
                                如有任何问题、需求或者反馈，请联系：usstbcnf@usst.edu.cn
                            </p>
                        </div>
                        <div class="tab-pane yqlj" id="panel-3">
                            <p>
                                <a href="http://www.cbs.fudan.edu.cn/">上海市高校插班生统一报名平台</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<jsp:include page="down.jsp"/>
</body>
</html>