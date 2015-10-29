<%
    String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
    base += base.endsWith("/") ? "" : "/";
    request.setAttribute("base", base);
    request.setAttribute("rnd", "?v=0.0.1");
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <base href="${base}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
    <meta http-equiv="Refresh" content="0; url=${base}html/ltIE9.html"/>
    <![endif]-->