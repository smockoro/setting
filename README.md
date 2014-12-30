<!-- vim: set fileencoding=utf-8 : -->


#設定ファイル一覧
##dotfile
vimやgvim(MacVim含)の設定ファイルが入っている．
###.vimrc
ホームディレクトリ直下に配置(~/.vimrc)

完全にクリーンな場合はプラグイン管理のためにneobundle.vimをクローンする必要がある．

```
    $ mkdir -p ~/.vim/bundle/ 
    $ cd ~/.vim/bundle 
    $ git clone http://github.com/Shougo/neobundle.vim  
```

###.gvimrc
.vimrc同様にホームディレクトリ直下に配置

###.zshrc
.vimrc同様にホームディレクトリ直下に配置

パッケージ管理ツールでzshをインストールした後，ログインシェルを変更.

```
    $ chsh -s /bin/zsh
```

##color
vimで利用されるカラースキーム入ってます．

~/.vim/colorsとして配置．

※gitでインストールすればいいから廃止予定

##template
vim-templateというプラグインで使用する．

~/.vim/templateとして配置．

##keymap
MacのKarabinerというキーマップ設定アプリで利用する．

中に入っているprivate.xmlを~/Library/Applications Support/Karabiner/private.xmlに上書きする．

#入っていないが要求されるツール
##Java SE
committia.vimで使用．

最新の[Java SE](http://www.oracle.com/technetwork/java/javase/downloads/index.html)を導入する．

##node.js
vim-instant-markdownで利用

パッケージ管理ツールでnode.jsを導入した後下記コマンドを実行

```
    $ [sudo] npm -g install instant-markdown-d
```

##Ruby
vim-instant-markdownで利用

```
    $ [sudo] gem install redcarpet pygments.rb
```


==========================================================

  <dl>
   <dd>Author:   Takahiro Oshima <em>\<tarotora51@gmail.com\></em></dd>
   <dd>License:  MIT License</dd>
   <dd>Created:  2014-12-30</dd>
  </dl>

==========================================================
