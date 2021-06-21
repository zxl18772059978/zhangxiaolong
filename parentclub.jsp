<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="parentclub.css" type="text/css">
<meta charset="UTF-8">
<title>家长社区</title>
</head>
<body>
	<br>
	<h1 align="center">家长社区</h1>
	<hr style="width: 100%;height: 5px;color: white;">
	<iframe src="message.jsp" width="800"></iframe>
	<form class="chat">
	<p>讨论区：</p>
	<textarea name="message" rows="5" cols="95"></textarea><br>
	<input type="submit" name="submit" value="发送"> 
	<input type="button" name="button" value="返回主菜单" onclick="window.location.href='index.html'"> 
	</form>



<%
	request.setCharacterEncoding("GBK");
	String mywords=request.getParameter("message");
	application.log(mywords);
	if(mywords!=null){
		int len_mywords=mywords.length();
		int flag=1;
		application.log(""+len_mywords);
		for(int i=0;i<len_mywords;i++){
			if(mywords.charAt(i)=='<'){
				flag=0;
			}
		}
	if(flag==1){
		mywords=">>:"+mywords;
		Object obj=application.getAttribute("words");
		if(obj==null)
			application.setAttribute("words", mywords);
		else
			application.setAttribute("words", obj.toString()+mywords+"<br>");
	}
	}
%>

</body>
</html>