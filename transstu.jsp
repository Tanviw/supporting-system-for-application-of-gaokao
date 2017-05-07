<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于插班生</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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
    <div class="mask">

        <ul class="slider-main">
            <li class="slider-panel">
                <img  src="finalCSS/images/房间.jpg">
            </li>
            <li class="slider-panel">
                <img  src="finalCSS/images/两本书.jpg">
            </li>
            <li class="slider-panel">
                <img  src="finalCSS/images/简约房.jpg">
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
        <div class="mask-overlay"></div>
        <div class="col-md-8 col-md-offset-2 bt">
            <h1>
                Dream never go away
            </h1>
            <span>这里给你<strong>二次"高考"</strong>的机会</span>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2 cbs">
            <div class="cbsul">
                <div class='cbs-zc' ><a>插班生政策</a></div>
                <ul>
                    <span class="shouy"><li><a class="current1" onclick="addClass(this,'#cbsjj')">插班生简介</a></li></span>
                    <li><a onclick="addClass(this,'#zsyx')">招生院校</a></li>
                    <li><a onclick="addClass(this,'#zsjz')">招生简章</a></li>
                    <li><a onclick="addClass(this,'#zsjh')">招生计划</a></li>

                </ul>
            </div>
    </div>
    <div class="col-md-10 chabansheng">
        <!--<div id="cbsimg"></div>-->
        <div class="cbsjj current" id="cbsjj">
            <div class="cbsks">
                <h2>插班生考试</h2>
                <hr/>
                <p>在高考制度下，每年都有部分优秀的高中生因为高考发挥欠佳而无缘进入重点名牌大学，同时，上海各本科高校中有不少表现非常优秀或有特殊才能的学生希望转入重点大学学习，重点高校也愿意通过招收插班生为他们提供可能的途径。在上海，“插班生考试”应运而生。随着高等教育事业的迅速发展，大学生在本科高校中的适当流动满足了学生的需求，同时也利于在学生中建立适当的竞争机制，激发学生的创新精神和创新能力。</p>
                <h2>政策解读</h2>
                <hr/>
                <p>上海市教委本着培养创新人才、鼓励优等学生成才以及在大学本科新生中引入适当竞争机制的目的，自2000年起先后允许
                    <a href="http://www.fudan.edu.cn/">复旦大学</a>、<a href="http://www.sjtu.edu.cn/">上海交通大学</a>、
                    <a href="http://www.tongji.edu.cn/">同济大学</a>、<a href="http://www.ecnu.edu.cn/">华东师范大学</a>、
                    <a href="http://www.ecust.edu.cn/">华东理工大学</a>、<a href="http://www.ecupl.edu.cn/">华东政法大学</a>、
                    <a href="http://www.shu.edu.cn/Default.aspx?tabid=10585">上海大学</a>、<a href="http://www.dhu.edu.cn/">东华大学</a>、
                    <a href="http://www.usst.edu.cn/">上海理工大学</a>、<a href="http://www.shou.edu.cn/">上海海洋大学</a>、
                    <a href="http://www.sues.edu.cn/">上海工程技术大学</a>、<a href="http://www.shmtu.edu.cn/">上海海事大学</a>、
                        <a href="http://www.shupl.edu.cn/">上海政法学院</a>等13所重点高校招收插班生。凡上海市普通高校在读的全日制一年级本科在读生，品德优良、身体健康、在完成第一学年学习并且成绩全部合格，都可以参加插班生考试。招生的报名条件、招生名额、考核办法、录取方式等由试点高校向社会公布。被录取的新生由录取学校将新生名单上报市教委，经审核办理转学手续。插班新生将按录取学校的学籍管理办法进行管理，未录取的新生仍留在原高校继续学习。</p>
                <h2>考试科目</h2>
                <hr/>
                <p>绝大多数学校都要考英语和高等数学两门基本功课，部分学校如华东理工大学文科专业考英语和中文写作，其他部分学校部分专业可能考英语、数学及物理和化学科目。</p>
                <h2>录取待遇</h2>
                <hr/>
                <p>插班新生作为高校录取的正式学生，从录取重点高校的二年级开始学习（部院校部分专业从一年级开始学习），享受和正式统招生一样的待遇。（包括学籍、毕业证书、学位证书等）</p>
                <h2>报名途径</h2>
                <hr/>
                <p class="bmtj">1、招收插班生的各个高校在每年的四月底或五月初会公布自己的高校招生办公室、教务处咨询报名事宜。<br/>
                    &nbsp&nbsp&nbsp&nbsp2、到目标学校招生网站索取招生简章和报考等级表，填妥后提交到目标学校招生办公室取得准考证，报名正式完成。<br/>
                    &nbsp&nbsp&nbsp&nbsp3、插班生考试通常在6月中旬至7月上旬举行，分初试和复试两轮。复试常是专业测试和面试，成绩占总成绩的40%。<br/>
                    &nbsp&nbsp&nbsp&nbsp4、复试结束后，被录取的学生将很快接到录取通知书。8月下旬开始，招生插班生的各高校将录取名单上报上海市教委，帮助学生办理转学手续。<br/></p>
            </div>
        </div>
        <div class="zsyx" id="zsyx">
            <h2>招生院校</h2>
            <hr/>
            <div class="schools">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr >
                        <td width="14%" class="simg"><a href="http://www.fudan.edu.cn/2016/channels/view/34/" target="_blank"><img src="finalCSS/images/fudan.gif" alt="复旦大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.sjtu.edu.cn/xbdh/yjdh/gk.htm" target="_blank"><img src="finalCSS/images/sjtu.gif" alt="上海交通大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.tongji.edu.cn/about.html" target="_blank"><img src="finalCSS/images/tongji.gif" alt="同济大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="16%" class="simg"><a href="http://www.ecnu.edu.cn/single/main.htm?page=ecnu" target="_blank"><img src="finalCSS/images/ecnu.gif" alt="华东师范大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.ecust.edu.cn/60/list.htm" target="_blank"><img src="finalCSS/images/hdlg.gif" alt="华东理工大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.dhu.edu.cn/5936/list.htm" target="_blank"><img src="finalCSS/images/donghua.gif" alt="东华大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.ecupl.edu.cn/603/list.htm" target="_blank"><img src="finalCSS/images/hdzf.gif" alt="华东政法大学插班生" width="80" height="80" border="0" /></a></td>
                    </tr>
                    <tr>
                        <td width="14%"><a href="http://www.fudan.edu.cn/2016/channels/view/34/" target="_blank">复旦大学</a></td>
                        <td width="14%"><a href="http://www.sjtu.edu.cn/xbdh/yjdh/gk.htm" target="_blank">上海交通大学</a></td>
                        <td width="14%"><a href="http://www.tongji.edu.cn/about.html" target="_blank">同济大学</a></td>
                        <td width="16%"><a href="http://www.ecnu.edu.cn/single/main.htm?page=ecnu" target="_blank">华东师范大学</a></td>
                        <td width="14%"><a href="http://www.ecust.edu.cn/60/list.htm" target="_blank">华东理工大学</a></td>
                        <td width="14%"><a href="http://www.dhu.edu.cn/5936/list.htm" target="_blank">东华大学</a></td>
                        <td width="14%"><a href="http://www.ecupl.edu.cn/603/list.htm" target="_blank">华东政法大学</a></td>
                    </tr>
                    <tr >
                        <td width="14%" class="simg"><a href="http://www.shu.edu.cn/Default.aspx?tabid=10591" target="_blank"><img src="finalCSS/images/shu.gif" alt="上海大学插班生" width="70" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.usst.edu.cn/s/1/t/471/p/17/c/346/d/365/list.htm" target="_blank"><img src="finalCSS/images/shlg.gif" alt="上海理工大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.shou.edu.cn/xxgk_93/list.htm" target="_blank"><img src="finalCSS/images/hydx.gif" alt="上海海洋大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="16%" class="simg"><a href="http://www.shmtu.edu.cn/about/about.htm%20" target="_blank"><img src="finalCSS/images/hsdx.gif" alt="上海海事大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.shupl.edu.cn/html/xxgk/1.html" target="_blank"><img src="finalCSS/images/zhengfa.gif" alt="上海政法学院插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg"><a href="http://www.sues.edu.cn/18/list.htm" target="_blank"><img src="finalCSS/images/gcjs.gif" alt="上海工程技术大学插班生" width="80" height="80" border="0" /></a></td>
                        <td width="14%" class="simg">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="14%"><a href="http://www.shu.edu.cn/Default.aspx?tabid=10591" target="_blank">上海大学</a></td>
                        <td width="14%"><a href="http://www.usst.edu.cn/s/1/t/471/p/17/c/346/d/365/list.htm" target="_blank">上海理工大学</a></td>
                        <td width="14%"><a href="http://www.shou.edu.cn/xxgk_93/list.htm" target="_blank">上海海洋大学</a></td>
                        <td width="16%"><a href="http://www.shmtu.edu.cn/about/about.htm%20" target="_blank">上海海事大学</a></td>
                        <td width="14%"><a href="http://www.shupl.edu.cn/html/xxgk/1.html" target="_blank">上海政法学院</a></td>
                        <td width="14%"><a href="http://www.sues.edu.cn/18/list.htm" target="_blank">上海工程技术大学</a></td>
                        <td width="14%">&nbsp;</td>
                    </tr>
                </table>
            </div>

        </div>
        <div class="zsjz" id="zsjz">
            <h2>招生简章</h2>
            <hr/>
            <ul>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/29.html" target="_blank">复旦大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/30.html" target="_blank">上海交通大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/19.html" target="_blank">同济大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/23.html" target="_blank">华东师范大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/26.html" target="_blank">华东理工大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201605/31.html" target="_blank">东华大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/27.html" target="_blank">华东政法大学2016年插班生招生章程</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/18.html" target="_blank">上海大学2016年插班生招生章程</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/24.html" target="_blank">上海理工大学2016年插班生招生简章</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/21.html" target="_blank">上海海洋大学2016年插班生招生章程</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/17.html" target="_blank">上海海事大学2016年插班生招生章程</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/25.html" target="_blank">上海政法学院2016年插班生招生章程</a></li>
                <li><i class="fa fa-angle-right fa-lg"></i><a href="http://www.cbs.fudan.edu.cn/html/201604/20.html" target="_blank">上海工程技术大学2016年插班生招生章程</a></li>
            </ul>
        </div>
        <div class="zsjh" id="zsjh">
            <h2>招生计划</h2>
            <hr/>
                <div class="tabbable" id="tabs-0">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#panel-1" data-toggle="tab">复旦大学</a>
                        </li>
                        <li >
                            <a href="#panel-2" data-toggle="tab">上海交通大学</a>
                        </li>
                        <li >
                            <a href="#panel-3" data-toggle="tab">同济大学</a>
                        </li>
                        <li >
                            <a href="#panel-4" data-toggle="tab">华东师范大学</a>
                        </li>
                        <li >
                            <a href="#panel-5" data-toggle="tab">华东理工大学</a>
                        </li>
                        <li >
                            <a href="#panel-6" data-toggle="tab">东华大学</a>
                        </li>
                        <li >
                            <a href="#panel-7" data-toggle="tab">华东政法大学</a>
                        </li>
                        <li >
                            <a href="#panel-8" data-toggle="tab">上海大学</a>
                        </li>
                        <li >
                            <a href="#panel-9" data-toggle="tab">上海理工大学</a>
                        </li>
                        <li >
                            <a href="#panel-10" data-toggle="tab">上海海洋大学</a>
                        </li>
                        <li >
                            <a href="#panel-11" data-toggle="tab">上海海事大学</a>
                        </li>
                        <li >
                            <a href="#panel-12" data-toggle="tab">上海政法学院</a>
                        </li>
                        <li >
                            <a href="#panel-13" data-toggle="tab">上海工程技术大学</a>
                        </li>
                    </ul>
                    <div class="gk"></div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="panel-1">

                                <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">
                            <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">院系</span></p>
                            </td>
                            <td style="border-color: windowtext windowtext windowtext #f0f0f0; border-top-width: 1pt; border-top-style: solid; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">专业</span></p>
                            </td>
                            <td style="border-color: windowtext windowtext windowtext #f0f0f0; border-top-width: 1pt; border-top-style: solid; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">科类</span></p>
                            </td>
                            <td style="border-color: windowtext windowtext windowtext #f0f0f0; border-top-width: 1pt; border-top-style: solid; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">学费</span></p>
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">(</span><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">元<span style="background-repeat: no-repeat no-repeat;" lang="EN-US">/</span>年<span style="background-repeat: no-repeat no-repeat;" lang="EN-US">)</span></span></p>
                            </td>
                            <td style="border-color: windowtext windowtext windowtext #f0f0f0; border-top-width: 1pt; border-top-style: solid; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">计划数（人）</span></p>
                            </td>
                            <td style="border-color: windowtext windowtext windowtext #f0f0f0; border-top-width: 1pt; border-top-style: solid; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">
                                <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">备注</span></p>
                            </td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 104.95pt; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">中国语言文学系</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">汉语言</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">文科</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">5000</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">4</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">&nbsp;</td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 104.95pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; border-left-width: 1pt; border-left-style: solid; background-color: transparent; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">历史学系</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">历史学</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">文科</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">5000</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">4</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">&nbsp;</td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 104.95pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; border-left-width: 1pt; border-left-style: solid; background-color: transparent; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">哲学学院</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">哲学</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">文科</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">5000</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">4</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">&nbsp;</td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 104.95pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; border-left-width: 1pt; border-left-style: solid; background-color: transparent; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">核科学与技术系</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">核工程与核技术</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">理科</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">5000</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">4</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">色盲不宜，部分专业课程英语授课</span></p>
                                </td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 104.95pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; border-left-width: 1pt; border-left-style: solid; background-color: transparent; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">航空航天系</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 86.45pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="115">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">理论与应用力学</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">理科</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 2cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="76">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">5000</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">4</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">&nbsp;</td>
                            </tr>
                            <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                <td style="border-color: #f0f0f0 windowtext windowtext; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 304.8pt; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" colspan="4" width="406">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;">总计</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 49.6pt; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0.75pt 0.75pt 0cm; background-color: transparent; background-repeat: no-repeat no-repeat;" width="66">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">20</span></p>
                                </td>
                                <td style="border-color: #f0f0f0 windowtext windowtext #f0f0f0; height: 32pt; border-right-width: 1pt; border-right-style: solid; width: 3cm; border-bottom-width: 1pt; border-bottom-style: solid; background-color: transparent; padding: 0cm; background-repeat: no-repeat no-repeat;" width="113">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; background-repeat: no-repeat no-repeat;" align="center"><span style="font-family: 宋体; background-repeat: no-repeat no-repeat;" lang="EN-US">&nbsp;</span></p>
                                </td>
                            </tr>
                            </tbody>
                            </table>

                        </div>
                        <div class="tab-pane" id="panel-2">

                            <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">

                                    <p style="line-height: 24px;">学院 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                            </td>
                            <td width="201">
                                <p style="line-height: 24px;">专业 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                            </td>
                            <td width="137">
                                <p style="line-height: 24px;">人数 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                            </td>
                            <td width="162">
                                <p style="line-height: 24px;">备注 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                            </td>
                            </tr>
                            <tr>
                                <td style="word-break: break-all;" width="153">
                                    <p style="line-height: 24px;">法学院 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="201">
                                    <p style="line-height: 24px;">法学 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="137">
                                    <p style="line-height: 24px;">约4人 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td rowspan="5" width="162">
                                    <p style="line-height: 24px;">非本专业学生， &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                    <p style="line-height: 24px;">一般需重读大一。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                            </tr>
                            <tr>
                                <td width="153">
                                    <p style="line-height: 24px;">化学化工学院 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="201">
                                    <p style="line-height: 24px;">应用化学 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="137">
                                    <p style="line-height: 24px;">约3人 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3" width="153">
                                    <p style="line-height: 24px;">医学院 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="201">
                                    <p style="line-height: 24px;">预防医学 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="137">
                                    <p style="line-height: 24px;">约1人 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                            </tr>
                            <tr>
                                <td width="201">
                                    <p style="line-height: 24px;">医学检验技术 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="137">
                                    <p style="line-height: 24px;">约1人 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                            </tr>
                            <tr>
                                <td width="201">
                                    <p style="line-height: 24px;">食品卫生与营养学 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                                <td width="137">
                                    <p style="line-height: 24px;">约1人 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
                                </td>
                            </tr>
                            </tbody>
                            </table>

                        </div>
                        <div class="tab-pane" id="panel-3">
                            <table style="border: currentColor; border-image: none;  border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr>
                                    <td style="padding: 0cm 5.4pt; border: 1pt solid; border-image: none; width: 111.75pt; background-color: transparent;" width="149">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">学院（系）</span></span></strong></span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 85pt; background-color: transparent;" width="113">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">专业</span></span></strong></span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">学制</span></span></strong></span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 77.95pt; background-color: transparent;" width="104">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">学费</span></span></strong></span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">计划数</span></span></strong></span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 104.5pt; background-color: transparent;" width="139">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><strong><span style="font-family: 仿宋;"><span style="font-size: medium;">备注</span></span></strong></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 111.75pt; background-color: transparent;" width="149">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">土木工程学院</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 85pt; background-color: transparent;" width="113">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">地质工程</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-size: medium;"><span style="font-family: 仿宋;">4</span><span style="font-family: 仿宋;">年</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 77.95pt; background-color: transparent;" width="104">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><span style="font-family: 仿宋;"><span style="font-size: medium;">5000</span></span><span style="font-family: 仿宋;"><span style="font-size: medium;">元<span>/</span></span><span style="font-size: medium;">年</span></span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">6</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 104.5pt; background-color: transparent;" width="139">
                                        <p style="margin: 3pt 0cm; text-align: left;" align="left"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">&nbsp;</span></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 111.75pt; background-color: transparent;" width="149">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">物理科学与工程学院</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 85pt; background-color: transparent;" width="113">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">应用物理学</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-size: medium;"><span style="font-family: 仿宋;">4</span><span style="font-family: 仿宋;">年</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 77.95pt; background-color: transparent;" width="104">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><span style="font-family: 仿宋;"><span style="font-size: medium;">5000</span></span><span style="font-family: 仿宋;"><span style="font-size: medium;">元<span>/</span></span><span style="font-size: medium;">年</span></span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">6</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 104.5pt; background-color: transparent;" width="139">
                                        <p style="margin: 3pt 0cm; text-align: left;" align="left"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">色盲、色弱者不宜</span></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 111.75pt; background-color: transparent;" width="149">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">化学系</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 85pt; background-color: transparent;" width="113">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">应用化学</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-size: medium;"><span style="font-family: 仿宋;">4</span><span style="font-family: 仿宋;">年</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 77.95pt; background-color: transparent;" width="104">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><span style="font-family: 仿宋;"><span style="font-size: medium;">5000</span></span><span style="font-family: 仿宋;"><span style="font-size: medium;">元<span>/</span></span><span style="font-size: medium;">年</span></span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">4</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 104.5pt; background-color: transparent;" width="139">
                                        <p style="margin: 3pt 0cm; text-align: left;" align="left"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">色盲、色弱者不宜</span></span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000; padding: 0cm 5.4pt; border-image: none; width: 111.75pt; background-color: transparent;" width="149">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">生命科学与技术学院</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 85pt; background-color: transparent;" width="113">
                                        <p style="margin: 3pt 0cm;"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">生物技术</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-size: medium;"><span style="font-family: 仿宋;">4</span><span style="font-family: 仿宋;">年</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 77.95pt; background-color: transparent;" width="104">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span><span style="font-family: 仿宋;"><span style="font-size: medium;">5000</span></span><span style="font-family: 仿宋;"><span style="font-size: medium;">元<span>/</span></span><span style="font-size: medium;">年</span></span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 42.55pt; background-color: transparent;" width="57">
                                        <p style="margin: 3pt 0cm; text-align: center;" align="center"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">4</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000; padding: 0cm 5.4pt; width: 104.5pt; background-color: transparent;" width="139">
                                        <p style="margin: 3pt 0cm; text-align: left;" align="left"><span style="color: #000; font-family: 仿宋;"><span style="font-size: medium;">色盲、色弱者不宜</span></span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="panel-4">
                            <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">
                                    <p style="text-align: center; -ms-layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="color: #333333; font-family: 宋体; font-size: 10.5pt; mso-bidi-font-family: 仿宋; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast;">专业</span></strong></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0cm 5.4pt; border-image: none; width: 53.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="71">
                                        <p style="text-align: center; -ms-layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="color: #333333; font-family: 宋体; font-size: 10.5pt; mso-bidi-font-family: 仿宋; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast;">最大招生计划数</span></strong></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0cm 5.4pt; border-image: none; width: 115.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="153">
                                        <p style="text-align: center; -ms-layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="color: #333333; font-family: 宋体; font-size: 10.5pt; mso-bidi-font-family: 仿宋; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast;">复试内容</span></strong></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0cm 5.4pt; border-image: none; width: 197.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="263">
                                        <p style="text-align: center; -ms-layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="color: #333333; font-family: 宋体; font-size: 10.5pt; mso-bidi-font-family: 仿宋; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast;">报考及录取要求</span></strong></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow: 1;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 60.4pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="81">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">数学类</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 53.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="71">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;" lang="EN-US"><span style="font-size: medium;">6</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 115.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="153">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">笔试占<span lang="EN-US">50% (</span></span><span style="font-size: medium;">高等数学与线性代数</span><span lang="EN-US"><span style="font-size: medium;">)</span></span><span style="font-size: medium;">；面试占</span><span lang="EN-US"><span style="font-size: medium;">50%</span></span><span style="font-size: medium;">。</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 197.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="263">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">要求复试笔试成绩不低于满分的<span lang="EN-US">60%</span></span><span style="font-size: medium;">。录取后就读信息与计算科学专业，要求转入一年级就读。</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow: 2;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 60.4pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="81">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">物理学类</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 53.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="71">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;" lang="EN-US"><span style="font-size: medium;">4</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 115.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="153">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">笔试<span lang="EN-US">(</span></span><span style="font-size: medium;">力学</span><span lang="EN-US"><span style="font-size: medium;">)</span></span><span style="font-size: medium;">占</span><span lang="EN-US"><span style="font-size: medium;">50%</span></span><span style="font-size: medium;">；面试占</span><span lang="EN-US"><span style="font-size: medium;">50%</span></span><span style="font-size: medium;">（考察考生专业思想、分析问题与表达能力、对物理知识的掌握、创新能力与培养潜质等方面）。</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 197.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="263">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">要求原就读理工科专业，已完成《高等数学》和《大学物理》力学内容的学习；含物理学和电子科学与技术两个专业，复试时确定专业。要求复试笔试与面试成绩均不得低于满分的<span lang="EN-US">60%</span></span><span style="font-size: medium;">；要求转入一年级就读。</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow: 3;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 60.4pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="81">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">生物技术</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 53.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="71">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;" lang="EN-US"><span style="font-size: medium;">4</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 115.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="153">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">笔试（生物基础知识）占<span lang="EN-US">40%</span></span><span style="font-size: medium;">；实验占</span><span lang="EN-US"><span style="font-size: medium;">30%</span></span><span style="font-size: medium;">（以中学生物学实验技术为主）；面试占</span><span lang="EN-US"><span style="font-size: medium;">30%</span></span><span style="font-size: medium;">。</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 197.25pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="263">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">要求原就读理工科专业；要求转入一年级就读。<span lang="EN-US">&nbsp;</span></span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 67.5pt; mso-yfti-irow: 4; mso-yfti-lastrow: yes;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 60.4pt; height: 67.5pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="81">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">电子信息类</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 53.25pt; height: 67.5pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="71">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="center"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;" lang="EN-US"><span style="font-size: medium;">10</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 115.1pt; height: 67.5pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="153">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;"><span style="font-size: medium;">笔试（高等数学<span lang="EN-US">A</span></span><span style="font-size: medium;">）占</span><span lang="EN-US"><span style="font-size: medium;">50%</span></span><span style="font-size: medium;">；面试占</span><span lang="EN-US"><span style="font-size: medium;">50%</span></span><span style="font-size: medium;">。</span></span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 197.25pt; height: 67.5pt; background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top" width="263">
                                        <p style="margin: 0cm 0cm 0pt; text-align: left; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;" align="left"><span style="font-size: medium;"><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;">要求原就读理工科专业</span><strong><span style="color: blue; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;">；</span></strong><span style="color: black; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-bidi-language: AR;">含微电子科学与工程、通信工程、电子信息科学与技术三个专业，复试时确定专业；要求转入一年级就读。</span></span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="panel-5">
                            <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">招生学院</span></strong></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 94.4pt; padding-right: 5.4pt; height: 18.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="126">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">专业名称</span></strong></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.35pt; padding-right: 5.4pt; height: 18.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="67">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">最大<span lang="EN-US"><br></span>招生数</span></strong></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117.5pt; padding-right: 5.4pt; height: 18.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="157">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">报考条件</span></strong></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 64.7pt; padding-right: 5.4pt; height: 18.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="86">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">体检限制</span></strong></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 79.3pt; padding-right: 5.4pt; height: 18.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="106">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><strong style="mso-bidi-font-weight: normal;"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 11.0pt;">笔试科目</span></strong></p>
                                    </td>
                                </tr>
                                <tr style="height: 17.8pt; mso-yfti-irow: 1;">
                                    <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 75.45pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" width="101">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">化学与分子工程学院</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 94.4pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="126">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">应用化学</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.35pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="67">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;" lang="EN-US">6</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117.5pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="157">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">现就读专业为：化学类、化工与制药类、药学类等相关大类</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 64.7pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" rowspan="2" width="86">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">色弱，色盲，嗅觉迟钝</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 79.3pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" rowspan="2" width="106">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">高等数学，大学英语，现代基础化学</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 17.8pt; mso-yfti-irow: 2;">
                                    <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 75.45pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" width="101">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">材料科学与工程学院</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 94.4pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="126">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">无机非金属材料工程</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.35pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="67">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt;" lang="EN-US">6</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117.5pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="157">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">现就读专业为：材料类</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 17.8pt; mso-yfti-irow: 3;">
                                    <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 75.45pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" width="101">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">机械与动力工程学院</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 94.4pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="126">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">机械设计制造及其自动化</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.35pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="67">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt;" lang="EN-US">9</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117.5pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="157">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">现就读专业为：机械类、仪器类、电气类、电子信息类、自动化类等相关大类</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 64.7pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="86">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt;" lang="EN-US">&nbsp;</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 79.3pt; padding-right: 5.4pt; height: 17.8pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="106">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">高等数学，大学英语，大学物理</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 48pt; mso-yfti-irow: 4; mso-yfti-lastrow: yes;">
                                    <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 75.45pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" width="101">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">商学院</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 94.4pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="126">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">信息管理与信息系统、</span></p>
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">工程管理、</span></p>
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">物流管理</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.35pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="67">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="center"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt;" lang="EN-US">9</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117.5pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="157">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">现就读专业：管理学门类（公共管理类除外）、经济学门类</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 64.7pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="86">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt;" lang="EN-US">&nbsp;</span></p>
                                    </td>
                                    <td style="border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 79.3pt; padding-right: 5.4pt; height: 48pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;" width="106">
                                        <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-pagination: widow-orphan;" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 0pt; mso-bidi-font-size: 10.5pt;">高等数学，大学英语，经济学</span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="tab-pane " id="panel-6">

                            <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">
                                           <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">学院</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 99pt; padding-right: 5.4pt; height: 14.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="132">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">专业</span><span style="font-size: 14pt;" lang="EN-US"><span style="font-family: Times New Roman;">(</span></span><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">大类</span><span style="font-size: 14pt;" lang="EN-US"><span style="font-family: Times New Roman;">)</span></span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.4pt; padding-right: 5.4pt; height: 14.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="67">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">招生科别</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 36pt; padding-right: 5.4pt; height: 14.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt;" width="48">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">人数</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 192.6pt; padding-right: 5.4pt; height: 14.25pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt;" width="257">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">复试内容</span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 37.95pt; mso-yfti-irow: 1;">
                                                <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117pt; padding-right: 5.4pt; height: 37.95pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-top-alt: solid windowtext 1.0pt;" width="156">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">化学化工与生物学院</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 99pt; padding-right: 5.4pt; height: 37.95pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="132">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">化学化工与生物类</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.4pt; padding-right: 5.4pt; height: 37.95pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="67">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">理科</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 36pt; padding-right: 5.4pt; height: 37.95pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" width="48">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-size: 14pt;" lang="EN-US"><span style="font-family: Times New Roman;">5</span></span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 192.6pt; padding-right: 5.4pt; height: 37.95pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="257">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">面试（</span><span style="font-family: 仿宋_GB2312; mso-bidi-font-size: 16.0pt;"><span style="font-size: x-large;">专业思想、综合素质、科学素养、创新意识</span></span><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">）</span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 40.9pt; mso-yfti-irow: 2;">
                                                <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117pt; padding-right: 5.4pt; height: 40.9pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-top-alt: solid windowtext 1.0pt;" width="156">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">人文学院</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 99pt; padding-right: 5.4pt; height: 40.9pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="132">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">法学</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.4pt; padding-right: 5.4pt; height: 40.9pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="67">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">文、理科</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 36pt; padding-right: 5.4pt; height: 40.9pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" width="48">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-size: 14pt;" lang="EN-US"><span style="font-family: Times New Roman;">5</span></span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 192.6pt; padding-right: 5.4pt; height: 40.9pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="257">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">面试（</span><span style="font-family: 仿宋_GB2312; mso-bidi-font-size: 16.0pt;"><span style="font-size: x-large;">专业思想、综合素质、科学素养、创新意识</span></span><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">）</span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 31.55pt; mso-yfti-irow: 3; mso-yfti-lastrow: yes;">
                                                <td style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 117pt; padding-right: 5.4pt; height: 31.55pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="156">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">管理学院</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 99pt; padding-right: 5.4pt; height: 31.55pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="132">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">工商管理</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 50.4pt; padding-right: 5.4pt; height: 31.55pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="67">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">文、理科</span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 36pt; padding-right: 5.4pt; height: 31.55pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" width="48">
                                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;" align="center"><span style="font-size: 14pt;" lang="EN-US"><span style="font-family: Times New Roman;">10</span></span></p>
                                                </td>
                                                <td style="border-bottom: windowtext 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 192.6pt; padding-right: 5.4pt; height: 31.55pt; border-top: #ece9d8; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-left-alt: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext 1.0pt;" nowrap="nowrap" width="257">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; mso-pagination: widow-orphan; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: page; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 135.8pt; mso-height-rule: exactly;"><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">面试（</span><span style="font-family: 仿宋_GB2312; mso-bidi-font-size: 16.0pt;"><span style="font-size: x-large;">专业思想、综合素质、科学素养、创新意识</span></span><span style="font-family: 仿宋_GB2312; font-size: 14pt; mso-ascii-font-family: 'Times New Roman';">）</span></p>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                             </div>
                        <div class="tab-pane " id="panel-7">

                            <table class="MsoNormalTable" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 16px; width: 586px; border-collapse: collapse; margin: auto auto auto -13.45pt; background-repeat: no-repeat no-repeat;" border="1" cellspacing="0" cellpadding="0">
                                <tbody style="background-repeat: no-repeat no-repeat;">
                                <tr style="height: 32pt; background-repeat: no-repeat no-repeat;">
                                    <td style="height: 32pt; width: 104.95pt; padding: 0.75pt 0.75pt 0cm; background-color: transparent; border: 1pt solid windowtext; background-repeat: no-repeat no-repeat;" width="140">

                                       <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">专业（方向）</span></p>
                                </td>
                                <td style="width: 98.4pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">招生人数</span></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 138.0pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="184">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">法律学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">法学（民商法律）</span></p>
                                </td>
                                <td style="width: 98.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;">4<span lang="ZH-CN">人</span></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 138.0pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="184">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">经济法学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">法学（经济法）</span></p>
                                </td>
                                <td style="width: 98.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;">3<span lang="ZH-CN">人</span></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 138.0pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="184">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">政治学与公共管理学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">政治学与行政学</span></p>
                                </td>
                                <td style="width: 98.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;">10<span lang="ZH-CN">人</span></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 138.0pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="184">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">社会发展学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">社会学</span></p>
                                </td>
                                <td style="width: 98.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;">10<span lang="ZH-CN">人</span></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 138.0pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="184">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">社会发展学院</span></p>
                                </td>
                                <td style="width: 157.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="210">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;" lang="ZH-CN">社会工作</span></p>
                                </td>
                                <td style="width: 98.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="131">
                                    <p class="MsoNormal" style="text-align: center; line-height: 150%; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12.0pt; line-height: 150%; font-family: 仿宋_GB2312; mso-hansi-font-family: 宋体; mso-font-kerning: 0pt;">3<span lang="ZH-CN">人</span></span></p>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        </div>
                        <div class="tab-pane " id="panel-8">


                          <table style="margin: auto auto auto -8.15pt; width: 538.6pt; border-collapse: collapse; mso-table-layout-alt: fixed; mso-padding-alt: 0.0000pt 5.4000pt 0.0000pt 5.4000pt;" align="center">
                                            <tbody>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1.5pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">学院</span></span></strong></p>
                                                </td>
                                                <td style="border-width: 1.5pt 1pt 1pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt -5.35pt 0pt; text-align: center; mso-para-margin-left: -0.5100gd; mso-para-margin-right: -0.5100gd; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">专业</span></span></strong></p>
                                                </td>
                                                <td style="border-width: 1.5pt 1pt 1pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">计划</span></span></strong></p>
                                                </td>
                                                <td style="border-width: 1.5pt 1pt 1pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">考试科目</span></span></strong></p>
                                                </td>
                                                <td style="border-width: 1.5pt 1pt 1pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 66.15pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="88">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">学费</span></span></strong></p>
                                                </td>
                                                <td style="border-width: 1.5pt 1.5pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: 1.5000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="131">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><strong><span style="font-size: 10.5pt; font-weight: bold; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">专业限制</span></span></strong></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 49.65pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><a name="OLE_LINK1"></a><span style="font-family: 宋体;">法学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt -5.35pt 0pt; text-align: center; mso-para-margin-left: -0.5100gd; mso-para-margin-right: -0.5100gd; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">法学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">5</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目一： 英语</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-family: 宋体;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">科目二： </span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">法律基础</span></span></p>
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 66.15pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="88">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-family: 宋体;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">6500</span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">元/年</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1.5pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: none; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="3" valign="center" width="131">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">无</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 70.85pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">文学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">历史学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">2</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目一： 英语</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目二： 文史</span></span></p>
                                                    <p style="margin: 0pt; text-align: justify; -ms-text-justify: inter-ideograph;" align="justify"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 66.15pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="13" valign="center" width="88">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">5000元/年</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 26.45pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">图书情报档案系</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">档案学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">10</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">高等数学A</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="3" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">材料科学与工程学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">材料物理</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">3</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: none; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="6" valign="center" width="189">
                                                    <p style="margin: 0pt 0pt 0pt 42pt; text-indent: -42pt; mso-char-indent-count: -4.0000;"><span style="font-family: 宋体;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">科目一：大学物理</span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">（含</span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">力学、热学、电磁学</span><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;">）</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt; text-align: justify; -ms-text-justify: inter-ideograph;" align="justify"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目二：高等数学A</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1.5pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: none; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="6" valign="center" width="131">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">色盲</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 24.45pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">金属材料工程</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">3</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 24.45pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">无机非金属材料工程</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">5</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 23.5pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="5" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">理学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">应用物理学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">3</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 26.5pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">微电子科学与工程</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">2</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 29.2pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">电子信息科学与技术</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">2</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">信息与计算科学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">3</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-family: 宋体;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">高等数学</span><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;">（</span><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;">含</span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">高等数学A80%</span><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;">、</span><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;">线性代数20%）</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1.5pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="131">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">无</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">应用化学</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">4</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: none; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="4" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目一：无机化学</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">&nbsp;</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">科目二：高等数学A</span></span></p>
                                                </td>
                                                <td style="border-width: 0px 1.5pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: none; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="5" valign="center" width="131">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">色盲、色弱</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">环境与化学</span></span></p>
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">工程学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">化学工程与工艺</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">2</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" rowspan="2" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">生命科学学院</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">生物工程</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">5</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">食品科学与工程</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">3</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1pt 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">美术学院</span></span></p>
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">（艺术类）</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">视觉传达设计</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">2</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">设计基础</span></span></p>
                                                </td>
                                                <td style="padding: 0pt 5.4pt; border: 1pt solid windowtext; width: 66.15pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.0000pt solid windowtext;" valign="center" width="88">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">10000元/年</span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="height: 22.7pt;">
                                                <td style="border-width: 1pt 1pt 1.5pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 94.65pt; background-color: transparent; mso-border-left-alt: 1.5000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="126">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">悉尼工商学院</span></span></p>
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">（中外合作办学）</span></span></p>
                                                </td>
                                                <td style="border-width: 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 108.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="145">
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">信息管理</span></span></p>
                                                    <p style="margin: 3.1pt 0pt 0pt; text-align: center; mso-para-margin-top: 0.2000gd;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">与信息系统</span></span></p>
                                                </td>
                                                <td style="border-width: 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 28.35pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 1.0000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="37">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">8</span></span></p>
                                                </td>
                                                <td style="border-width: 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 141.75pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="189">
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">综合英语能力测试</span></span></p>
                                                    <p style="margin: 0pt;"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">（含听力、词汇语法、阅读、写作）</span></span></p>
                                                </td>
                                                <td style="border-width: 1pt 1pt 1.5pt; border-style: solid; border-color: windowtext; padding: 0pt 5.4pt; width: 66.15pt; background-color: transparent; mso-border-left-alt: 1.0000pt solid windowtext; mso-border-right-alt: 0.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="88">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-spacerun: 'yes'; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">15000元/年</span></span></p>
                                                </td>
                                                <td style="border-width: 1pt 1.5pt 1.5pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0pt 5.4pt; width: 98.95pt; background-color: transparent; mso-border-left-alt: none; mso-border-right-alt: 1.5000pt solid windowtext; mso-border-top-alt: 1.0000pt solid windowtext; mso-border-bottom-alt: 1.5000pt solid windowtext;" valign="center" width="131">
                                                    <p style="margin: 0pt; text-align: center;" align="center"><span style="font-size: 10.5pt; mso-font-kerning: 1.0000pt;"><span style="font-family: 宋体;">无</span></span></p>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                </div>
                        <div class="tab-pane " id="panel-9">
                            <table class="MsoNormalTable" style="margin: auto auto auto -1.7pt; width: 614px; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr style="height: 28.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
                                    <td style="padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 184.3pt; padding-right: 5.4pt; height: 28.7pt; padding-top: 0cm; mso-border-alt: solid black .5pt; border: black 1pt solid;" width="246">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">招生专业</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.6pt; padding-right: 5.4pt; height: 28.7pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">计划数</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.65pt; padding-right: 5.4pt; height: 28.7pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">大类组</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 63.75pt; padding-right: 5.4pt; height: 28.7pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="85">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">考试科目</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 4cm; padding-right: 5.4pt; height: 28.7pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" width="151">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">总分计算公式</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 8.5pt; mso-yfti-irow: 1;">
                                    <td style="border-bottom: black 1pt solid; border-left: black 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 184.3pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="246">
                                        <p class="MsoNormal" style="line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">生物医学工程、印刷工程、材料科学与工程</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.6pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-size: medium;">25</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.65pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="mso-spacerun: yes;">&nbsp;</span></span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;">一</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 63.75pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" rowspan="3" width="85">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">英语、高等数学</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 4cm; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151">
                                        <p class="MsoNormal" style="text-align: left; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="left"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">总分<span lang="EN-US">=</span>（高等数学<span lang="EN-US">*50%+</span>英语<span lang="EN-US">*50%</span>）<span lang="EN-US">*2</span></span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 8.5pt; mso-yfti-irow: 2;">
                                    <td style="border-bottom: black 1pt solid; border-left: black 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 184.3pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="246">
                                        <p class="MsoNormal" style="line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">管理科学、公共事业管理</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.6pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-size: medium;">10</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.65pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">二</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 4cm; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151">
                                        <p class="MsoNormal" style="text-align: left; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="left"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">总分<span lang="EN-US">=</span>（高等数学<span lang="EN-US">*40%+</span>英语<span lang="EN-US">*60%</span>）<span lang="EN-US">*2</span></span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 8.5pt; mso-yfti-irow: 3; mso-yfti-lastrow: yes;">
                                    <td style="border-bottom: black 1pt solid; border-left: black 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 184.3pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="246">
                                        <p class="MsoNormal" style="line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">传播学、英语（金融与投资）（中美合作）、英语（国际贸易）（中美合作）</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.6pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-size: medium;">15</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 49.65pt; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="66">
                                        <p class="MsoNormal" style="text-align: center; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="center"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">三</span></span></p>
                                    </td>
                                    <td style="border-bottom: black 1pt solid; border-left: #ece9d8; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 4cm; padding-right: 5.4pt; height: 8.5pt; border-top: #ece9d8; border-right: black 1pt solid; padding-top: 0cm; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" width="151">
                                        <p class="MsoNormal" style="text-align: left; line-height: 22pt; margin: 0cm 0cm 0pt; layout-grid-mode: char; mso-line-height-rule: exactly; mso-layout-grid-align: none;" align="left"><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt;"><span style="font-size: medium;">总分<span lang="EN-US">=</span>（高等数学<span lang="EN-US">*30%+</span>英语<span lang="EN-US">*70%</span>）<span lang="EN-US">*2</span></span></span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane " id="panel-10">
                            <table class="MsoNormalTable" style="margin: auto auto auto -1.7pt; width: 614px; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">
                                <tbody>
                            <tr style="height: 14.25pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
                                <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">招生专业</span></p>
                                </td>
                                <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">招生计划</span></p>
                                </td>
                                <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">考试科目</span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">生物科学</span></span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">英语、基础化学（含无机及分析化学）</span></span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 2;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">海洋科学</span></span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">英语、高数</span></span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 3;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">食品科学与工程</span></span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">英语、基础化学（含无机及分析化学）</span></span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 4;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">空间信息与数字技术</span></span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">英语、高数</span></span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 5;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">物流管理</span></span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">英语、高数</span></span></p>
                                </td>
                            </tr>
                            <tr style="height: 14.25pt; mso-yfti-irow: 6; mso-yfti-lastrow: yes;">
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                    <p class="MsoNormal" style="text-align: left; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="left"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">合计</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">25</span></p>
                                </td>
                                <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                    <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">&nbsp;</span></p>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        </div>
                        <div class="tab-pane " id="panel-11">
                            <table class="MsoNormalTable" style="margin: auto auto auto -1.7pt; width: 614px; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid black; mso-border-insidev: .5pt solid black;" border="1" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr style="height: 14.25pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
                                    <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">专业名称</span></p>
                                    </td>
                                    <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">招生计划</span></p>
                                    </td>
                                    <td style="border-top: windowtext 1pt solid; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">科类</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">物流管理</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">10</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">限招理工</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">物流工程</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">限招理工</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">交通工程</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">10</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">限招理工</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">法学(海商法)</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">10</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文理兼收</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">经济学类(大类招生)</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">10</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文理兼收</span></span></p>
                                    </td>
                                </tr>
                                <tr style="height: 14.25pt; mso-yfti-irow: 1;">
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 120.5pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="161">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: medium;"><span style="font-family: 宋体; color: black; mso-ascii-font-family: 'Times New Roman'; mso-bidi-font-weight: bold; mso-hansi-font-family: 'Times New Roman';">旅游管理</span></span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 70.9pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="95">
                                        <p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt; mso-pagination: widow-orphan;" align="center"><span style="font-size: 12pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">5</span></p>
                                    </td>
                                    <td style="border-top: #f0f0f0; height: 14.25pt; border-right: windowtext 1pt solid; width: 182.6pt; border-bottom: windowtext 1pt solid; padding-bottom: 0cm; padding-top: 0cm; padding-left: 5.4pt; border-left: #f0f0f0; padding-right: 5.4pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt;" width="243">
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: medium;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文理兼收</span></span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="tab-pane " id="panel-12">
                            <table style="border: currentColor; border-image: none; width: 403px; border-collapse: collapse; mso-border-alt: solid windowtext 1.0pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm; mso-border-insideh: 1.0pt solid windowtext; mso-border-insidev: 1.0pt solid windowtext;" border="1" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr style="height: 20.55pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
                                    <td style="padding: 0cm 5.4pt; border: 1pt solid windowtext; border-image: none; width: 151.3pt; height: 20.55pt; background-color: transparent;" width="202">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-bidi-font-weight: bold; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">专业</span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0cm 5.4pt; border-image: none; width: 29.85pt; height: 20.55pt; background-color: transparent; mso-border-left-alt: solid windowtext 1.0pt;" width="40">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-bidi-font-weight: bold; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">计划</span></p>
                                    </td>
                                    <td style="border-width: 1pt 1pt 1pt 0px; border-style: solid solid solid none; border-color: windowtext windowtext windowtext #000000; padding: 0cm 5.4pt; border-image: none; width: 121.1pt; height: 20.55pt; background-color: transparent; mso-border-left-alt: solid windowtext 1.0pt;" width="161">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-bidi-font-weight: bold; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">考试科目</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 19.1pt; mso-yfti-irow: 1;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 151.3pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt;" width="202">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">法学（刑事司法方向）</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 29.85pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="40">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">7</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 121.1pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="161">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">法律基础，英语</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 19.1pt; mso-yfti-irow: 2;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 151.3pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt;" width="202">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">法学（国际经济法方向）</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 29.85pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="40">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">7</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 121.1pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="161">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">法律基础，英语</span></p>
                                    </td>
                                </tr>
                                <tr style="height: 19.1pt; mso-yfti-irow: 3; mso-yfti-lastrow: yes;">
                                    <td style="border-width: 0px 1pt 1pt; border-style: none solid solid; border-color: #000000 windowtext windowtext; padding: 0cm 5.4pt; border-image: none; width: 151.3pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt;" width="202">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">行政管理</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 29.85pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="40">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;" lang="EN-US">6</span></p>
                                    </td>
                                    <td style="border-width: 0px 1pt 1pt 0px; border-style: none solid solid none; border-color: #000000 windowtext windowtext #000000; padding: 0cm 5.4pt; width: 121.1pt; height: 19.1pt; background-color: transparent; mso-border-top-alt: solid windowtext 1.0pt; mso-border-left-alt: solid windowtext 1.0pt;" width="161">
                                        <p style="margin: 0cm 0cm 0pt; text-align: center; line-height: 20pt; mso-line-height-rule: exactly; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 15.3pt; mso-height-rule: exactly; mso-pagination: widow-orphan; mso-element-frame-vspace: 5.0pt;" align="center"><span style="color: black; font-family: 宋体; font-size: 12pt; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体;">法律基础，英语</span></p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane " id="panel-13">

                            <h4>2016年受航空公司委托招收飞行技术专业插班生共计15名（吉祥航空5名，东方航空10名）
                            </h4>
                        </div>
                        </div>
                </div>


        </div>

    </div>

</div>

<jsp:include page="down.jsp"/>
</body>
</html>
