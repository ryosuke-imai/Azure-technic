# AzureAD Doc

--- 
- [AzureAD Doc](#azuread-doc)
- [1. はじめに](#1-はじめに)
  - [機能のイメージ](#機能のイメージ)
  - [用語理解](#用語理解)
  - [主な機能](#主な機能)
- [2. AzureADの基礎](#2-azureadの基礎)
- [3. AzureADの個別機能](#3-azureadの個別機能)
  - [Azure操作手段とそれぞれの環境情報](#azure操作手段とそれぞれの環境情報)
  - [テナント (tenant)](#テナント-tenant)
  - [ユーザグループ (user/group)](#ユーザグループ-usergroup)
- [4. ベストプラティクス](#4-ベストプラティクス)
- [9. 参考先情報](#9-参考先情報)

---

# 1. はじめに
このドキュメントで AzureAD の情報を整理する.  
逐次調査した結果はまとめておく.  

## 機能のイメージ

![ActiveDirectoryとは](https://docs.microsoft.com/ja-jp/learn/modules/manage-users-and-groups-in-aad/media/2-azure-vs-windows-ad.png)
出展 : [Azure 公式 Page](https://docs.microsoft.com/ja-jp/learn/modules/manage-users-and-groups-in-aad/2-create-aad) 
 

## 用語理解

- Azure Active Directory : Azure AD
- ディレクトリ : 基本組織に一つ割り当てられるもの（正確には契約単位） : テナントとも呼ばれる 
  > Azure Portalや機能上で記載が異なる（使い分け）場所がある. 
- サブスクリプション : 課金を管理する単位. セキュリティー分界点とも説明されている.   
  > テナント 1 対 多 サブスクリプション の関係 
![テナントとサブスクリプションの関係](https://docs.microsoft.com/ja-jp/learn/modules/manage-users-and-groups-in-aad/media/2-users-subs-and-directories.png)
出展 : [Azure 公式 Page](https://docs.microsoft.com/ja-jp/learn/modules/manage-users-and-groups-in-aad/2-create-aad) 
  
- ユーザ : 大きく分けて、ゲスト (guest) とメンバー (menber) があり. ユーザタイプもクラウドのみ、ローカルActiveDirectoryと同期、外部 (他アカウント) がある.
- グループ : ユーザの整理、アクセス許可の管理が可能. セキュリティーグループとMicrosoft 365 グループの2種類がある. 

## 主な機能
- シングルサインオン : 一つのIDでさまざまなサービスの認証を行う
- 多要素認証 : 複数の認証方式を多層で利用し、セキュリティーの強固なものにする

# 2. AzureADの基礎

# 3. AzureADの個別機能

## Azure操作手段とそれぞれの環境情報



## テナント (tenant)


## ユーザグループ (user/group)


# 4. ベストプラティクス


# 9. 参考先情報
- [公式ドキュメント - Azure Active Directory のドキュメント -](https://docs.microsoft.com/ja-jp/azure/active-directory/)
- [MSLearn - Azure Active Directory のユーザーとグループの管理](https://docs.microsoft.com/ja-jp/learn/modules/manage-users-and-groups-in-aad/)
- 

