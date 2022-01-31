# Azure Resource Manager に関する情報

目次
- [Azure Resource Manager に関する情報](#azure-resource-manager-に関する情報)
  - [Azure Resource Manager (以下. ARM) とは](#azure-resource-manager-以下-arm-とは)
  - [用語説明](#用語説明)
  - [便利機能](#便利機能)

## Azure Resource Manager (以下. ARM) とは

- Azure のリソースのデプロイなどの管理を行うサービス
  - 管理 : 作成、更新（アクセス制御、ロック、タグつけなど）、削除

**基本的にどのリソース作成操作もすべて、ARMを利用している**

![作成フローイメージ](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/media/overview/consistent-management-layer.png)

※「API を介して最初にリリースされた機能は、最初のリリースから 180 日以内にポータルに表示」らしい

## 用語説明

- **リソース** - Azure を通じて管理できる要素。 
  - 例
    - 仮想マシン、ストレージ アカウント、Web アプリ、データベース、仮想ネットワーク、リソース グループ、サブスクリプション、管理グループ、およびタグ
- **リソース グループ** - Azure ソリューションの関連するリソースを保持するコンテナー。 
  - グループとして管理するリソース組織にとって最も有用になるように決める
  - リソースグループの注意事項は[こちら](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/overview#resource-groups)
- **リソース プロバイダー** - Azure リソースを提供するサービス
  - 例
    - 仮想マシン リソースを提供する Microsoft.Compute
    - Microsoft.Storage は、もう 1 つの一般的なリソースプロバイダー
    - 詳細は[こちら](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/resource-providers-and-types)
- **Resource Manager テンプレート** - リソース グループ、サブスクリプション、管理グループ、またはテナントにデプロイする 1 つまたは複数のリソースを定義する JavaScript Object Notation (JSON) ファイル。 このテンプレートを使えば、リソースを一貫性のある形で繰り返しデプロイできます。 テンプレートのデプロイの概要に関するページを参照してください。
- **宣言型構文** - 一連のプログラミング コマンドを記述しなくても、"作成しようとしているもの" を明確に宣言することのできる構文です。 宣言型構文の例として、Resource Manager テンプレートがあります。 このファイルで、Azure にデプロイするインフラストラクチャのプロパティを定義します。 テンプレートのデプロイの概要に関するページを参照してください。

## 便利機能

- [Visual Studio Code を使用して ARM テンプレートを作成する](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/templates/quickstart-create-templates-use-visual-studio-code?tabs=CLI)
  - vscode拡張機能 : ARM テンプレートスニペット、検証、入力候補、パラメタファイルのサポート
  - 必要前提条件
    - [Azure Resource Manager (ARM) Tools](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools)
    - [Azure PowerShell モジュール](https://docs.microsoft.com/ja-jp/powershell/azure/new-azureps-module-az?view=azps-7.1.0)

