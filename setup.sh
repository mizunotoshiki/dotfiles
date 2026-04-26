#!/bin/bash

echo "🚀 dotfiles セットアップ開始"

# Homebrew
if ! command -v brew &> /dev/null; then
  echo "📦 Homebrewをインストール中..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew インストール済み"
fi

# oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "📦 oh-my-zshをインストール中..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "✅ oh-my-zsh インストール済み"
fi

# brewパッケージ
echo "📦 brewパッケージをインストール中..."
brew install zsh-autosuggestions zsh-syntax-highlighting rbenv

# シンボリックリンク
echo "🔗 シンボリックリンクを作成中..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# .gitconfig.local
if [ ! -f "$HOME/.gitconfig.local" ]; then
  echo "⚠️  ~/.gitconfig.local がありません。作成してください："
  echo "  [user]"
  echo "    email = あなたのメールアドレス"
  echo "    name = Mizuno Toshiki"
fi

echo ""
echo "✅ セットアップ完了！"
echo "⚠️  iTerm2の設定："
echo "  Settings → General → Settings → Load settings from a custom folder"
echo "  パス: ~/dotfiles/iterm2"
