ERC20Tutorial
====

このプロジェクト( [kojimaro/ERC20Tutorial](https://github.com/kojimaro/ERC20Tutorial) )は、OpenZeppelin2.x系とTruffle5.x系を利用してERC２０トークンの作成を行うチュートリアルです。

・[Truffle](https://github.com/trufflesuite/truffle)

・[OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-solidity)

## Simple
simpleディレクトリは、トークンの追加発行「mint()」や処分「burn()」といった機能のない、シンプルなERC20トークンです。

チュートリアルはこちら↓

[【Truffle5.0対応】シンプルなERC20トークンを作成しよう！](http://kojiryo.com/968/)

## 使い方
はじめにチュートリアルプロジェクトをダウンロードします。

```git clone https://github.com/kojimaro/ERC20Tutorial.git```

続いてターミナルを使って、起動したいプロジェクトディレクトリに移動します。

``` cd simple```

「node_modules」をインストールします。

``` npm install```

Ganacheを起動します。

![Ganache(GUI)](http://kojiryo.com/wp-content/uploads/2018/12/a7cdf7fabf72467403bfce5522f1233a.png)

```
developmentへの接続設定は、Ganache(GUI版)に合わせた設定にしてあります。
Ganache-cliを利用する場合は、truffle-config.jsのポートをCLI版に合わせてください。

例:
  development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 8545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
  },
```

プライベートネットにコントラクトをデプロイします。

```truffle migrate```

プライベートネットのノードにアクセスします

```truffle console```

あとは各チュートリアルの記事に沿って、動かしてみてください！
- [simpleを動かす](http://kojiryo.com/968/#outline__4_2)

## ライセンス
MIT
