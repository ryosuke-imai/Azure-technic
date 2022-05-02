- [PowerShell 上の環境構築はめんどくさい](#powershell-上の環境構築はめんどくさい)
- [widnows に Docker on wsl2 環境](#widnows-に-docker-on-wsl2-環境)
  - [（推奨）Windows 11 の場合](#推奨windows-11-の場合)
  - [Docker のインストール](#docker-のインストール)
    - [Windows Package Manager のインストール](#windows-package-manager-のインストール)
    - [Docker Desktop のインストール](#docker-desktop-のインストール)
- [Powershell Docker on Ubuntu(wsl2) 環境](#powershell-docker-on-ubuntuwsl2-環境)
  - [補足](#補足)
# PowerShell 上の環境構築はめんどくさい

Windows 上の PowerShell環境 に様々なモジュールを導入したいが、環境汚染が嫌だという方。
Dockerを利用しましょう。
（PowerShell のバージョンアップに伴い根本的なモジュールの入れ替えが発生しています。今後も起きうるので PowerShell 環境は使い捨てで）

wsl2 が便利になったことで Docker も気軽に利用できます。

Windows 11 はさらに楽になっているので、Windows 11 へのアップグレードは推奨します。

# widnows に Docker on wsl2 環境 

## （推奨）Windows 11 の場合

以下のコマンドでwsl2 が入ります

管理者権限の powershell で
``` powershell
# wslのインストール
wsl --install
```

Ubuntu 20 も同時に入ります。

その他のバージョンでのインストールは[こちら](https://zenn.dev/rhene/articles/wsl2-on-win11-or-win10)のサイトを参考にしてください。
非常にまとめられている。


## Docker のインストール

Docker インストールも、Windows 11 は楽になりました。

今一番楽な方法は、Windows のパッケージマネージャーを利用して入れる方法です。
※Windows は、Ubuntu で言う ```apt``` みたいなパッケージ管理マネージャを開発していて、それを利用することで様々なパッケージを簡単に管理することができます。（通称 ```winget```）

### Windows Package Manager のインストール

wingetは、Microsoftストアから「App Installer」を検索してインストールしてください。
インストールしたら、管理者権限で、コマンドプロンプトまたはPowerShellを起動して以下を実行します。

```powershell
winget -V
```
コマンドが正常に稼働したらOKです。

### Docker Desktop のインストール

次にDocker Desktop を検索してみます

```powershell
winget search docker
```
表示されて、IDを指定してインストールします。
以下では、Docker Desktopのインストールコマンドを提示します。

```powershell
winget install Docker.DockerDesktop
```

これだけで Docker環境ができます。
簡単です。

Mac の M1 が出たからって言って Mac買う必要はないです。

# Powershell Docker on Ubuntu(wsl2) 環境

Windows メニューからUbuntuを選択するか
Windows Terminal から Ubuntuを起動するかしてください。

後は以下でPowerShell環境の構築です。

```powershell
docker run -it mcr.microsoft.com/powershell
```

コマンド入力状態になれば正常です。

```powershell
PS />
```

詳細は[公式参照](https://docs.microsoft.com/ja-jp/powershell/scripting/install/powershell-in-docker?view=powershell-7.2)



これで Azure構築環境もローカル環境を汚さずできますね。

## 補足

なお、一旦stop した環境に再度入る際には、start してから
```
docker exec -it <name> pwsh
```
では入れます。
