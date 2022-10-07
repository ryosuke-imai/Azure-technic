# Azure PaaS の概要と作成のメモ


![PaaSとIaaSの違い](images/001.png)


## AppService の整理

### Appserviceとは

- Webアプリケーションの実行環境を提供
![AppServiceの種類](images/002.png)
※他にも同じアーキテクチャーである AzureFunction、LogicApps

### AppServiceの構成

- App Serviceプランを作成して利用する
![AppServiceの構成](images/003.png)

### AppServiceのプラン

- プランのサイズによってHWリソースの量、オプション機能、価格が決定する
![AppServiceのプラン](images/004.png)



## WebApps の作成手順

1. リソースグループ作成
2. AppServiceの作成
3. Webの設定
   1. KudoによるHTMLファイルの作成
   2. スケールの設定

- Kudu（クードゥツールがある）

## 補足資料

ソース管理に
- Kudu（クードゥツールがある）


- dig DNSの動作確認
- sqlcmd SQLServer への接続確認
- git サンプルアプリをデプロイ
