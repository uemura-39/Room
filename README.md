# Room

自宅のリビングや自室などの写真を投稿し紹介する事が出来るアプリです。
# URL
https://ro-om.work/  
・非ログイン状態の場合は閲覧、検索のみ可能です。ログインすると投稿やコメントが可能になります。  
・ログイン画面の「かんたんログイン」をクリックすると、メールアドレスとパスワードを入力せずにログインできます。  

# 制作背景
私は部屋のレイアウトを考えるのが苦手です。なので他の人がどの様なレイアウトをしているかなどを参考にしたい為、自分のレイアウトを気軽に紹介出来るサービスがあればと思い制作しました。

# 使用技術
・Ruby 2.5.1   
・Rails 5.2.3  
・MySQL  
・AWS(EC2、Route53、ALB、ACM)  
・nginx  
・unicorn  
・circleci

# AWS構成図
![Untitled Diagram-Page-2](https://user-images.githubusercontent.com/51046591/89529053-08222100-d827-11ea-81eb-ae07a7daa7bd.png)


# 機能一覧
・ユーザー機能  
・ユーザー編集機能  
・ログイン/ログアウト機能  
・かんたんログイン機能  
・投稿/削除/編集機能  
・コメント機能   
・いいね/いいね取り消し機能  
・いいね一覧表示機能  
・フォロー/フォロー解除機能  
・フォロー/フォロー一覧表示機能  
・SNSシェア機能  
・検索機能  
・カテゴリー機能  

# 実装するにあたって大変だった事
1番大変だった事はAWSやcirclecCIなどを使ってデプロイをする事でした。私にはLinuxやシェルスクリプトの基礎が出来ていないと言う事を再認識し今一度基礎の学習に振り返る事が出来ました。

# 今後実装したい機能
issueにて管理

# 参考アプリケーション

[RoomClip](https://roomclip.jp/)
