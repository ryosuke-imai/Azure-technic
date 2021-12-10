# Windows Terminal

- [Windows Terminal](#windows-terminal)
- [カスタマイズ](#カスタマイズ)
  - [oh-my-posh](#oh-my-posh)
    - [STEP1 権限変更](#step1-権限変更)
    - [STEP2 oh-my-posh のインストール](#step2-oh-my-posh-のインストール)
    - [STEP3 テーマの確認と](#step3-テーマの確認と)
    - [STEP4 テーマの設定](#step4-テーマの設定)
    - [STEP5 フォントのインストール](#step5-フォントのインストール)
- [参考サイト](#参考サイト)

# カスタマイズ

## oh-my-posh

Linux の Powerline に相当する.  

### STEP1 権限変更

``` Powershell
Set-ExcecutionPolicy RemoteSigned
```

### STEP2 oh-my-posh のインストール

''' Powershell
Install-Module oh-my-posh -Scope CurrentUser
'''

### STEP3 テーマの確認と

[公式テーマ](https://ohmyposh.dev/docs/themes)  

デザインと名前を確認して設定

``` powershell
Get-PoshThemes
```

### STEP4 テーマの設定

テーマの設定をする。

``` powershell
notepad $PROFILE
```

以下のように書き込む

> Import-Module oh-my-posh
> Set-PoshPrompt Theme unicorn

```powershell
Set-PoshPrompt
```

上記で設定も可能.

### STEP5 フォントのインストール

[フォント](https://www.nerdfonts.com/)

# 参考サイト

- [Windowsターミナル](https://internet.watch.impress.co.jp/docs/column/shimizu/1370747.html) 
  