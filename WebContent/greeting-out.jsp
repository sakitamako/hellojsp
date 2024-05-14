<!-- このファイルが通常のHTMLファイルではなく、JSPであることを示している -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- ブラウザにHTML5標準に従って文書を解釈するよう指示 -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>

        <!-- HTTPリクエスト内のパラメータ値を、引数に指定した文字コードでエンコードする(読み込む)メソッド -->
        <% request.setCharacterEncoding("UTF-8"); %>

        <!-- ブラウザの名前を入力して確定ボタンをクリックすると下記が表示される、formから送られてきたデータを取得するメソッド -->
        <p>こんにちは、<%= request.getParameter("user") %>さん！</p>

    </body>
</html>