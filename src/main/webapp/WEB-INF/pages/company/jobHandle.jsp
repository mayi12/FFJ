<%@ page contentType="text/html;charset=UTF-8"  language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>NWPU校园招聘</title>
    <link rel="icon" href="/static/img/icon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="/static/img/icon.png" type="image/x-icon" />
    <link rel="stylesheet" href="/static/lib/bootstrap/css/bootstrap.css" >
    <link rel="stylesheet" href="/static/css/public.css">
    <link rel="stylesheet" href="/static/css/positionInfo.css">
    <link rel="stylesheet" href="/static/css/header.css">
    <link rel="stylesheet" href="/static/css/footer.css">


</head>

<body>

<!--导航条-->
<c:import url="head.jsp"></c:import>
<%--<jsp:include page="head.jsp"></jsp:include>--%>
<!--/导航条-->
<!-- 个人简历 -->
<section class="section-main">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 position-head">
                <div class="position-content">
                    <div class="position-content-l pull-left">
                        <div class="job-name" title="java开发工程师">
                            <h2>${jobDetail.jobName}</h2>
                            <h5 style="color:#555;">${jobDetail.company.name}</h5>
                        </div>
                        <dd>
                            <h5 style="color:#555;">
                                <span style="color:#fd5f39;">${jobDetail.salary} </span>
                                <span> / ${jobDetail.location} /</span>
                                <span>${jobDetail.needNum}人 /</span>
                                <span>${jobDetail.kind}</span>
                            </h5>
                        </dd>
                    </div>
                    <div class="position-content-r pull-right">
                        <div class="position-deal">
                            <div class="job-collection pull-left">
                                编辑
                            </div>
<%--                            <div class="resume-deliver pull-right">--%>
                                <a href="/company/postJobList" style="color:#fff;"><div class="resume-deliver pull-right">返回</div></a>

                        </div>
                        <div class="tool-icon">
                            <ul class="list-inline">
                                <li><a href=""><i class="glyphicon glyphicon-thumbs-down"></i></a></li>
                                <li><a href=""><i class="glyphicon glyphicon-thumbs-up"></i></a></li>
                                <li><a href=""><i class="glyphicon glyphicon-share"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<section class="section-main section-main-color">
    <div class="container">
        <div class="row job-info">
            <div class="col-md-6 col-md-offset-1 job-detail">
                <dt></dt>
                <dd>
                    <h4><strong>职位描述</strong></h4>
                    <br>
                    <div>
                        <h5><strong>技能要求：</strong></h5>
                        <p>${jobDetail.jobRequire}</p>
                        <br>
                        <h5><strong>工作描述：</strong></h5>
                        <p>${jobDetail.jobInfo}</p>
                        <br>
                        <h5><strong>工作地点：</strong></h5>
                        <p>${jobDetail.location}</p>
                        <br>
                        <h5><strong>其他：</strong></h5>
                        <p>无</p>
                    </div>
                </dd>
            </div>
            <div class="col-md-4 job-companyInfo">
                <div class="job-company">
                    <dt>
                        <a href="">
                            <div>
                                <div class="company-icon"><img src="/static/img/company1.png" alt=""></div>
                                <div><h4>${jobDetail.company.name}<i class="glyphicon glyphicon-check" style="margin-left: 10px; color:#00b38a;"></i></h4></div>
                            </div>
                        </a>
                    </dt>
                    <br>
                    <dd>
                        <ul>
                            <li>地址： ${jobDetail.company.location}</li>
                            <li>简介： <p>${jobDetail.company.companyInfo}</p></li>
                            <li>联系人： ${companyUser.name}</li>
                            <li>联系电话： ${companyUser.phone}</li>
                        </ul>
                    </dd>
                </div>

            </div>
        </div>
    </div>
    <div style="height: 50px; background-color: #f6f6f8;"></div>
</section>
<!-- /个人简历 -->

<!--应聘者列表-->
<div class="container border-green col-md-10 col-md-offset-1" style="border:1px solid #ccc; margin-top:20px;padding:20px;background-color:#fff;margin-bottom: 20px;">
    <div style="">
        <div class="page-title">
            <h3>应聘者列表</h3>
        </div>
        <div class="page-action">
            <!-- show when multiple checked -->
            <div class="btn-batch" style="display: none">
                <button class="btn btn-info btn-sm">批量批准</button>
                <button class="btn btn-warning btn-sm">批量拒绝</button>
                <button class="btn btn-danger btn-sm">批量删除</button>
            </div>
            <div style="display: flex;">
                <div style="margin-right:20px;">处理状态: </div>
                <div class="search-option"  style="margin-bottom: 20px;">
                    <form action="/company/jobHandle" method="get" id="getJobHandle">
                        <input type="text" class="sr-only" value="${jobId}" name="jobId">
                        <select name="status" id="selectId" onchange="submitForm();">
                            <option value="3" <c:if test="${status==3}">selected</c:if>>不限</option>
                            <option value="0" <c:if test="${status==0}">selected</c:if>>未处理</option>
                            <option value="1" <c:if test="${status==1}">selected</c:if>>约请面试</option>
                            <option value="2" <c:if test="${status==2}">selected</c:if>>抱歉</option>
                        </select>
                        <input type="text" class="sr-only" value="${pb.currentPage}" name="currentPage">

                    </form>
                </div>
                <div style="margin-left:30px;"><h5>当前第${pb.currentPage}页！共${pb.totalPage}页！</h5></div>
            </div>
            <c:if test="${pb.totalPage != 1}">

            </c:if>
            <c:if test="${pb.totalPage > 1}">
                <ul class="pagination pagination-sm pull-right">
                    <c:if test="${pb.currentPage <= 1}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Previous">
                            </c:if>
                            <c:if test="${pb.currentPage > 1}">
                    <li>
                        <a href="/admin/jobHandle?jobId=${jobId}&currentPage=${users.currentPage-1}" aria-label="Previous">
                            </c:if>
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach begin="1" end="${pb.totalPage}" var="i">
                        <li class="<c:if test='${pb.currentPage == i}'>active</c:if>"><a href="/admin/jobHandle?jobId=${jobId}&currentPage=${i}">${i}</a></li>
                    </c:forEach>
                    <!--后一页禁用-->
                    <c:if test="${pb.currentPage >= pb.totalPage}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Next">
                            </c:if>
                            <c:if test="${pb.currentPage < pb.totalPage}">
                    <li>
                        <a href="/admin/jobHandle?jobId=${jobId}&currentPage=${users.currentPage+1}" aria-label="Next">
                            </c:if>
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </c:if>
        </div>
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th class="text-center" width="40"><input type="checkbox"></th>
                <th>userName</th>
                <th>email</th>
                <th>phone</th>
                <th>状态</th>
                <th class="text-center" width="150">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pb.list}" var="user" varStatus="i">
                <tr class="warning">
                    <td class="text-center"><input type="checkbox"></td>
                    <th>${user.get("userName")}</th>
                    <th>${user.get("email")}</th>
                    <th>${user.get("phone")}</th>
                    <th>
                        <c:choose>
                            <c:when test="${user.get('status') == 0}">未处理</c:when>
                            <c:when test="${user.get('status') == 1}">约请面试</c:when>
                            <c:when test="${user.get('status') == 2}">抱歉</c:when>
                        </c:choose>
                    </th>
                    <td class="text-center">
                        <a href="/company/resumeHandle?userId=${user.get('userId')}&jobId=${jobId}" class="btn btn-info btn-xs">查看简历</a>
                        <a href="javascript:;" class="btn btn-danger btn-xs">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!--/应聘者列表-->
<script type="text/javascript">
    function submitForm() {
        var form = document.getElementById("getJobHandle"); //获取form表单对象
        form.submit();//form表单提交
    }
</script>


<script type="text/javascript" src="/static/lib/jquery/jquery.js"></script>
<script type="text/javascript" src="/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>