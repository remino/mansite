jeksite
=======

Plain and simple [Jekyll](https://jekyllrb.com) site template ideal for [GitHub Pages](https://pages.github.com).

Also good for a quick-and-dirty sandbox static site similar to using [CodePen](https://codepen.io).

## Usage

```
git clone https://github.com/remino/jeksite.git
# Or use this repo as a template on GitHub and clone that instead.

cd jeksite
asdf install # If you have asdf installed
bundle install
./jeksite
```

## Help

See `./jeksite -h` for more information on the command.

## To Do

- [ ] Ensure `Gemfile` is using `github-pages` if the site is for GitHub Pages. If not, use plain `jekyll`.
- [ ] Update `_config.yml`, notable `baseurl`, `domain`, `url`, `title`, and `description`.
- [ ] Update `README.md` by first deleting its content.
- [ ] Update or remove `LICENSE.txt` if needed. (ISC licence by default.)
- [ ] Delete content of `index.html`, `style.css`, and `script.js`.
