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
        <p>こんにちは！</p>

        <!-- java.util.date=日時を取得したり、日時を計算したりする際に利用する日付型のクラス -->
        <% out.println(new java.util.Date()); %>

        <%!
        //pタグの計算式の答えは、addのaとbの値をreturnのところで足し算された答え
        static int add(int a, int b) {
            return a+b;
        }
        %>

        <p>1+2=<%= add(1,2) %></p>
        <p>3+4=<%= add(3,4) %></p>

        <!-- 初期値を代入、countAは実行するたび１ずつ増える -->
        <%! static int countA=0; %>
        <%! static int countB=1; %>

        <!-- int countB=0;
        下記にもともと入っていたコード、コメントアウトして上記に入力してみた。
        実行すると、Aは1・Bは2と表示される -->
        <%
        countA++;
        countB++;
        %>

        <p>宣言による変数 countA=<%= countA %></p>
        <p>スクリプトレットによる変数 countB=<%= countB %></p>

        <!-- Math.random()＝「乱数を発生させるメソッド」で、「書いてある場所に、乱数を置いてくれる」メソッド -->
        <p><% out.println(Math.random()); %></p>
        <p><%= Math.random() %></p>

        <p>お名前を入力してください。</p>

        <!-- ユーザー情報をメッセージボディに格納してgreeting-out.jspに送信できる -->
        <form method="post" action="greeting-out.jsp">

            <!-- 基本的な単一行のテキスト入力欄を生成 -->
            <input type="text" name="user">

            <!-- 確定ボタン -->
            <input type="submit" value="確定">

        </form>

        <!-- ユーザー情報をメッセージボディに格納してtotal-out.jspに送信できる -->
        <form method="post" action="total-out.jsp">

            <!-- 基本的な単一行のテキスト入力欄を生成 -->
            <input type="text" name="price">
            円x

            <!-- 基本的な単一行のテキスト入力欄を生成 -->
            <input type="text" name="count">
            個＋送料

            <!-- 基本的な単一行のテキスト入力欄を生成 -->
            <input type="text" name="delivery">
            円＝

            <!-- 計算ボタン -->
            <input type="submit" value="計算">

        </form>
    </body>
</html>
