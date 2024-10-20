---
layout: post
title: Apple Music → Spotify のライブラリ移植を Python で行う
date: 2024-10-14 00:00:00 +0900 # date here
categories: "" # category here
published: true
---

Apple Music に追加した曲のデータを Spotify にコピーするために Python でスクリプトを書く。


## Apple Music API

公式ページを参考にする

- [Apple Music API](https://developer.apple.com/documentation/applemusicapi)

### Token の作成

まずは Token を作る必要があるらしい。
[公式](https://developer.apple.com/documentation/applemusicapi/generating_developer_tokens) によると、
developer token なるものは Apple Music API を使用する際に必ず必要なものである。

developer token を作るためにはまず以下の2つが必要だ:

- MusicKit identifier
- private key

https://developer.apple.com/help/account/configure-app-capabilities/create-a-media-identifier-and-private-key/

よってまずはこれらを作成する




このdeveloper tokenを作成するパッケージもあるが (例: [](https://github.com/pelauimagineering/apple-music-token-generator/blob/master/music_token.py))、結局ソースコードを編集する手間がかかるので今回は自分で実装する。

joserfc というパッケージを使用して、エンコードされた developer token を作成する
https://jose.authlib.org/en/guide/jwt/

記述する内容は以下の通り:

- header
  - alg
  - kid
- payload
  - iss
  - iat
  - exp

これらを引数に取って developer token を生成する関数を実装した (`generate_developer_token() @ utils.py`)




