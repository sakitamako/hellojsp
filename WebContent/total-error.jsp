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

    <!-- 例外を検出できる -->
    <%@ page isErrorPage="true" %>

    <p>数値を入力してください。</p>
    <button onclick="history.back()">戻る</button>
    <br>

    <!-- 例外 -->
    <p><%= exception %></p>
    <table border=1>
        <tr>
            <td><strong>エラーメッセージ</strong></td>

            <!-- エラーメッセージを表示 -->
            <td><%= exception.getMessage() %></td>
        </tr>
        <tr>
            <td><strong>例外を文字列に変換</strong></td>

            <!-- 例外をログに出力する、toString＝数値型などを文字列に変換するときなどに使用 -->
            <td><% exception.toString(); %></td>
        </tr>
        <tr>
            <td><strong>スタックトレース</strong></td>
            <td>

            <%
            //エラーが発生するまでの経緯(メソッドの呼び出し順番)が示されている
            //このスタックトレースを解析することによりエラーが発生した箇所と原因を確認することができる
            exception.printStackTrace(new java.io.PrintWriter(out));
            %>

            </td>
        </tr>
    </table>
    </body>
</html>