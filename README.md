# Ruby on Rails Tutorial: Schneier on Security

This is a copy of the [*Schneier on Security*](https://www.schneier.com/)
Websight.


$ git clone git@github.com:highslater/schneider_on_security.git

$ bundle install --without production

$ cp config/database.yml.template config/database.yml

$ bundle exec rake db:migrate

$ bundle exec rake test:prepare

$ rails \_4.0.8\_ server
