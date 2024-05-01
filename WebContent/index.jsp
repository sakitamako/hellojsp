<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST</title>
</head>
<body>
<p>こんにちは！</p>
<% out.println(new java.util.Date()); %>

<%!
static int add(int a, int b) {
return a+b;
}
%>
<p>1+2=<%=add(1,2) %></p>
<p>1+2=<%=add(3,4) %></p>

<%! static int countA=0; %>
<%
int countB=0;
countA++;
countB++;
%>
<p>宣言による変数 countA=<%=countA %></p>
<p>スクリプトレットによる変数 countB=<%=countB %></p>

<p><% out.println(Math.random()); %></p>
<p><%=Math.random() %></p>

<p>お名前を入力してください。</p>
<form method="post" action="greeting-out.jsp">
<input type="text" name="user">
<input type="submit" value="確定">
</form>

<form method="post" action="total-out.jsp">
<input type="text" name="price">
円x
<input type="text" name="count">
個＋送料
<input type="text" name="delivery">
円＝
<input type="submit" value="計算">
</form>

</body>
</html>
