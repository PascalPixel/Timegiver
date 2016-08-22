![Superpencil](https://dl.dropboxusercontent.com/u/898312/logo.png)

#### Description
Superpencil Stack has all the basics for our apps.

Web: [www.superpencil.com](http://www.superpencil.com)
Github: [@Superpencil](http://github.com/Superpencil)

#### Authors
(In order of appearance)
[@PascalPencil](http://github.com/pascalpencil)
[@curly-coder](http://github.com/curly-coder)
[@mvaneyken](http://github.com/mvaneyken)
[@cfavreau](http://github.com/cfavreau)

#### Codestyle
- Style guide by Bootstrap maintainer @mdo for HTML and CSS http://codeguide.co
- Use 'title' html attributes for test elements to click
- Use .haml, .sass, .coffeescript, .rb
- 2 spaces indentation or you Yoko Ono us all
- Use Atom editor for automatic formatting of your code
- Always try to use Bootstrap elements and styles to accomplish what you want, with adjustments based on the situation
- Care about the planet; don't eat beef, buy an electric car, install solar panels on your house, thanks.

#### Setup on El Capitan
1. Download this repo and cd to the folder in Terminal.
2. `xcode-select --install`
3. `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. `brew install rbenv ruby-build node postgresql`
5. `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`
6. `source ~/.bash_profile`
7. `rbenv install 2.3.1`
8. `rbenv global 2.3.1`
9. `ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents`
10. `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist`
11. `bundle install`
12. `rails db:setup && rails db:migrate`
13. `bundle exec puma` to run the server
14. Navigate to localhost:3333 in your browser.
