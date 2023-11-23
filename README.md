# Install

```bash
apt install git zsh php
wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
curl -L git.io/antigen > ~/antigen.zsh
git clone --recurse-submodules https://github.com/lsv/new-dotfiles.git ~/tmp_dotfiles
rm -rf ~/tmp_dotfiles/.git
mv ~/tmp_dotfiles/* ~
```
