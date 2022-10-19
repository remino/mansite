mansite
=======

By Rémino Rem <https://remino.net/>

Plain and simple [Middleman](https://middlemanapp.com) site template.

Also good for a quick-and-dirty sandbox static site similar to using [CodePen](https://codepen.io).

Based on the same idea as [jeksite](https://github.com/remino/jeksite.git) using [Jekyll](https://jekyllrb.com).

- [Usage](#usage)
	- [Clone this repo locally and use it as a template](#clone-this-repo-locally-and-use-it-as-a-template)
	- [Use this repo as a template on GitHub](#use-this-repo-as-a-template-on-github)
	- [Install using Homebrew and generate a new site](#install-using-homebrew-and-generate-a-new-site)
- [Help](#help)
- [To Do](#to-do)

## Usage

There are a few ways to use _mansite_:

### Clone this repo locally and use it as a template

```sh
git clone https://github.com/remino/mansite.git newsite
cd newsite
asdf install # if you use asdf
bundle install
git remote set-url origin <url of your repo> # if you want to push to a new repo
./mansite # serve site using jekyll
```

### Use this repo as a template on GitHub

https://github.com/remino/mansite/generate

### Install using Homebrew and generate a new site

This requires [Homebrew](https://brew.sh) and works on macOS (and possibly Linux) only.

```sh
brew tap remino/remino
brew install mansite
mansite new newsite
cd newsite
./mansite
```

## Help

See `./mansite -h` for more information on the command.

## To Do

- [ ] Update `config.rb` and `data/site.yml` to your liking.
- [ ] Update `README.md` by first deleting its content.
- [ ] Update or remove `LICENSE.txt` if needed. (ISC licence by default.)
- [ ] Delete content of `index.html`, `style.css`, and `script.js` files found in `source`.
