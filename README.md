# dotfiles

## セットアップ

```bash
git clone git@github-personal:mizunotoshiki/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

## セットアップ後の手動作業

### ~/.gitconfig.local を作成
```ini
[user]
  email = あなたのメールアドレス
  name = Mizuno Toshiki
```

### ~/.zshrc.local を作成（PC固有の設定）
PC固有の設定はここに追記する

### iTerm2の設定
Settings → General → Settings → Load settings from a custom folder
パス: ~/dotfiles/iterm2

## 構成
- `.zshrc` - 共通のシェル設定
- `.gitconfig` - 共通のGit設定
- `iterm2/` - iTerm2の設定
- `setup.sh` - セットアップスクリプト
