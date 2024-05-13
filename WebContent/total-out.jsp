<!-- このファイルが通常のHTMLファイルではなく、JSPであることを示している -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- ブラウザにHTML5標準に従って文書を解釈するよう指示 -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>TEST</title>
    </head>
    <body>

    <!-- JSP内で例外が発生した場合に「表示するJSP」が読み込まれ、代わりにtotal-error.jspを表示する -->
    <%@ page errorPage="total-error.jsp" %>

    <%
    //HTTPリクエスト内のパラメータ値を、引数に指定した文字コードでエンコードする(読み込む)メソッド
    request.setCharacterEncoding("UTF-8");

    //文字列を整数に変換する このメソッドは文字列を プリミティブ型の int に変換して返します
    //HTMLのname属性値を設定することで、name属性とセットで書いているvalue属性の値を取得することができる
    int price=Integer.parseInt(request.getParameter("price"));
    int count=Integer.parseInt(request.getParameter("count"));
    int delivery=Integer.parseInt(request.getParameter("delivery"));
    %>

    <%= price %>円x
    <%= count %>個＋送料
    <%= delivery %>円＝
    <%= price*count+delivery %>円

    </body>
</html>