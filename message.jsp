<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3;message.jsp"><!--周期性刷新  -->
<title>Insert title here</title>
<script type="text/javascript" language="JavaScript">
	function scrollWindow() {//当聊天室的内容很多时，需要使页面自动滚到最下面，从而显示最新聊天内容
		this.scroll(0,65000);
		setTimeout('scrollWindow()', 200);
	}
	scrollWindow();
</script>
</head>
<body>
<%=application.getAttribute("words") %>
</body>
</html>