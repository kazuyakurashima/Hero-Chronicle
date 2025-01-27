# ①課題番号-プロダクト名

# 01-Hero Chronicle

## ②課題内容（どんな作品か）

キャラを決めて表示するアプリ

## ③DEMO

まだありません

## ④作ったアプリケーション用のIDまたはPasswordがある場合

- ID: 今回はなし
- PW: 今回はなし

## ⑤工夫した点・こだわった点

### 理解した点
- PHPがデータをPOSTで受け取る際は全て文字列で受け取ること
- データベースは、何種類もあってMySQLだけじゃないということ

### 工夫したところ
1. 関数のフォルダを作りました。
    - はじめに、登録を処理するときと、表示するときで二回データベースに接続するので、接続の関数を別ページに表記させて読み込ませるようにしました。
2. XSS対策の関数を作ったので、それも関数として別ページに作りました。
3. 二枚の関数は、その意図目的が異なるため別々のファイルにしましたが、関数であることには変わりないので、関数フォルダ（functions）にそのファイルをまとめました。

## ⑥難しかった点・次回トライしたいこと（又は機能）

### 苦労した点
1. **SQLインジェクションの理解**
    - SQLインジェクションの方法の理解に苦労しました。
    - SQL文に型を指定することで、インジェクションを防げば良いのかと思ったけど、それが仕組み上できないと理解しました。
        - 理由の一つとして、型の管理が二重になること。PHP側で型指定したものを、DBに持って行くが、DBも型を持っている。
        - プレースホルダを用意して、直ぐにデータを渡さないようにすること
        - `bindValue`で変数に値を、型を指定してバインドさせること
        - 割り当てた上で、DBにSQL文を渡すことで安全性を保つこと

2. **表示部分が複雑になりました**
    - データベースを操作する部分と表示する部分が混在するようになりました。
    - ChatGPTに相談したところ、MVCモデルに従って整理すると良いだろうとのこと。

### **次回の目標**
- ファイルをMVC構造に整理すること

**現状のファイル構成**
```
register.php
register_process.php
register_confirm.php

functionsというフォルダ：
    - security.php
    - db_connect.php
```

**MVC構造の例**
```
controllers/
    - RegisterController.php
models/
    - PlayerModel.php
views/
    - register.php
    - register_confirm.php
functions/
    - security.php
    - db_connect.php
```

## ⑦質問・疑問・感想、シェアしたいこと等なんでも

- MVC構造の実装に苦労しないためにはどうするべき？

**[参考記事]**
- [Progate](https://prog-8.com/dashboard)
    - SQL （初級）コースでSQL操作を習得しました！

