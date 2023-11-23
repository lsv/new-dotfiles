# Install

```bash
apt install git zsh php wget curl
wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
curl -L git.io/antigen > ~/antigen.zsh
git clone --recurse-submodules https://github.com/lsv/new-dotfiles.git ~/tmp_dotfiles
cd ~/tmp_dotfiles
tar cf - . | (cd ~; tar xvf -)
```
