<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>信息</title>
</head>
<body>
<%!FileWriter fw; %>
<%//接收信息
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String city=request.getParameter("city");
    String Class=request.getParameter("class");
    String phone=request.getParameter("phone");
    fw = new FileWriter("D:\\soft\\IDEA\\workspace\\ComputerNetwork\\src\\main\\webapp\\报名信息.txt"); //建立FileWrite对象,并设定由fw对象变量引用
    //将字串写入文件
    fw.write(name+"\t");
    fw.write(sex+"\t");
    fw.write(city+"\t");
    fw.write(Class+"\t");
    fw.write(phone+"\n");
    fw.close(); //关闭文件
    out.print("报名成功！");
%>
</body>
</html>