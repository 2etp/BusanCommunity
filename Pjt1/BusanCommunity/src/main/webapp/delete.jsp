<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%> 
<%@	page import="BusanCommunityPack.BoardBean"%>
<jsp:useBean id="sMgr" class="BusanCommunityPack.SystemMgr"/>

<html>
<head>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
<%
	request.setCharacterEncoding("UTF-8");
	String nowPage = request.getParameter("nowPage");
	int boardSeq = Integer.parseInt(request.getParameter("boardSeq"));
    String inId = (String)session.getAttribute("idKey");
    
	if (inId != null) {
		BoardBean bean = (BoardBean) session.getAttribute("bean");
		String dbId = bean.getBoardWriter();
		if (inId.equals(dbId)) {
			sMgr.deleteBoard(boardSeq);
			String url = "community.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		}
			
%>
<script type="text/javascript">
	function check() {

		alert("삭제되었습니다.");
		document.delFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br/><br/>
		<form name="delFrm" method="post" action="delete.jsp">
			<table width="600" cellpadding="2">
				<tr>
					<td align="center">
						<table>
							<tr>
								<td align="center">
									<input type="password" name="pass" size="17" maxlength="15">
								</td>
							</tr>
							<tr>
								<td><hr size="1" color="#eeeeee"/></td>
							</tr>
							<tr>
								<td align="center">
									<input type="button" value="삭제완료" onClick="check()"> 
									<input type="reset" value="다시쓰기">
									<input type="button" value="뒤로" onClick="history.go(-1)">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
			<input type="hidden" name="boardSeq" value="<%=boardSeq%>">
		</form>
	</div>
	<%}%>
</body>
</html>