![Timegiver](/app/assets/images/timegiver.png?raw=true "Timegiver Logo")

#### Description
Timegiver is an open-source app to track a remote team.

Web: [www.superpencil.com](http://www.superpencil.com)
Github: [Superpencil/Timegiver](http://github.com/Superpencil/Timegiver)

#### Authors
[@PascalPencil](http://github.com/pascalpencil)
[@curly-coder](http://github.com/curly-coder)
[@mvaneyken](http://github.com/mvaneyken)
[@cfavreau](http://github.com/cfavreau)

#### Setup on macOS
1. Download this repo and cd to the folder in Terminal.
2. `xcode-select --install`
3. `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. `brew install rbenv ruby-build postgresql`
5. `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`
6. `source ~/.bash_profile`
7. `rbenv install 2.3.1`
8. `rbenv global 2.3.1`
9. `ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents`
10. `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist`
11. `bundle install`
12. `rails db:setup && rails db:migrate`
13. `bundle exec rails s` to run the server
14. Navigate to localhost:3333 in your browser.
