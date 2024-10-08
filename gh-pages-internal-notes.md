# On management of GitHub Pages Website

Note: this internal memo is ignored for rendering to HTML.

- github pages + jekyll を使って静的サイト生成を行う
- ruby は chruby と ruby-install を使って導入 [ref](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/)
- Bundler を導入 (`gem install bundler`) [ref](https://qiita.com/oshou/items/6283c2315dc7dd244aef)
  - bundlerで Gemfile から jekyll を導入 (`$HOME/vendor/bundle`に)
- jekyllの実行は `bundle exec jekyll hogehoge`で行う

## Update

1. Rubyのupdate (`ruby-install ruby`, `chruby x.x.x`)
2. `gem update`
3. `bundle update github-pages` を定期的に実行すること


- デフォルトのテーマから変更するには, 自分のサイトの root directory にテーマのhtml (`/Users/hrkito0902/hrk110.github.io/vendor/bundle/ruby/3.2.0/gems/minima-2.5.1`にある, `bundle show minima` で得られる)をディレクトリ構造そのままにコピーしてきて編集すればよい。cf. [github](https://github.com/jekyll/minima)

## Resources

- [Jekyll を使用して GitHub Pages サイトにコンテンツを追加する](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/adding-content-to-your-github-pages-site-using-jekyll)
  - そもそものページ追加方法
  - post は `_posts` にファイル名に注意して .md を追加すれば良い。詳しくは [jekyll のページ](https://jekyllrb.com/docs/posts/) も参照.
- [Jekyll を使用して GitHub Pages サイトをローカルでテストする](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)
  - いちいちコミットするのは面倒で時間がかかるので、localhost:4000でブラウザから確認できるようにする
  - 要約: `bundle exec jekyll serve` を実行すればOK
- [Jekyll を使用して GitHub Pages サイトにテーマを追加する](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/adding-a-theme-to-your-github-pages-site-using-jekyll)
  - テーマのカスタマイズ方法 (CSS/HTML)

## TODO

- [x] homeのlayoutを変えてjekyll の情報とか出ないようにする
  - 最初から _post ディレクトリに入っていた welcome の post を消して解決した
- [x] useful links のページを作成する
- [ ] home が質素すぎるのでなにか考える
