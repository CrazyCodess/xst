<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>校视通</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!--<link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>-->
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css"/>
 <%--   <link rel="stylesheet" href="${assetsPath}/css/admin_manage.css"/>--%>

    <script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>


<!--------------------
        header
--------------------->
<div class="main">
    <div class="admin">

        <jsp:include page="../header.jsp"/>

        <!--------------------
               nav
        --------------------->
        <jsp:include page="../sidebar.jsp"/>


        <div class="content-course">
            <!--   课程列表   -->
            <div class="dash-table course-list">
                <h2 class="dash-head">课程列表</h2>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>文件名</th>
                        <th>文件类型</th>
                        <th>文件大小</th>
                        <th>下载次数</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach begin="${listStart}" end="${page.list.size()}" items="${page.list}" var="doc">
                        <tr>
                            <td>${doc.id}</td>
                            <td>${doc.fileName}${doc.fileExt}</td>
                            <td>${doc.docType}</td>
                            <td>${doc.fileSize}</td>
                            <td>${doc.downloads}</td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
                <nav class="page">
                    <jsp:include page="../../common/pagination.jsp" />
                </nav>
            </div>
            <!--   END 课程列表   -->

        </div>


        <script>
            $(document).ready(function () {
                $(".sidebar-nav a").click(function(){
                    var tree="."+$(this).attr("data-target");
                    $(tree).slideToggle(300);
                    if($(this).hasClass("collapsed")){
                        $(this).removeClass("collapsed");
                    }else{
                        $(this).addClass("collapsed");
                    }
                })
            });
        </script>

        <link rel="stylesheet" href="//cdn.bootcss.com/iCheck/1.0.2/skins/square/blue.css"/>

        <script src="//cdn.bootcss.com/iCheck/1.0.2/icheck.min.js"></script>
        <!--icheck-->
        <script>
            $(document).ready(function(){
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
        <script>
            $(function(){
                function alertMessage(message) {
                    var insert =
                            "<div class='suspend' style='width: 100%;height: 100%;display: none;z-index: 2;background-color: rgba(0,0,0,.6);position: fixed;top: 0;left: 0;'>" +
                            "<div class='suspend-content' style='text-align:right;padding: 30px 40px;width: 400px;height: 200px;background-color: #fff;border-radius: 4px;position: fixed;top: 26%;left: 36%;'>" +
                            "<p class='alertMessage' style='text-align:left;font-size: 22px;height: 80px;color: #000;font-weight: bold;margin-bottom: 30px;'></p>" +
                            " <button type='button' class='btn btn-success'>确定</button>" +
                            "</div>" +
                            "</div>";
                    $('body').append(insert);
                    $('.alertMessage').html(message);
                    $('.suspend').css('display','block');
                    $('.btn').on('click',function(){
                        $('.suspend').css('display','none');
                    });


                };
                $(document).ready(function () {
                    var msg="${Msg}";
//            var msg="abc";

                    if(msg!=''){
                        alertMessage(msg);
                    }
                });
            });
        </script>
    </div>
</div>
</body>
</html>
