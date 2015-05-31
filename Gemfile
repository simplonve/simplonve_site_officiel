source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :production do
  # Postgre est le serveur de production herbergé sur Heroku
  gem 'pg'

  # Puma est un serveur "simple, fast, threaded for Ruby/Rack applications."
  # https://github.com/puma/puma
  gem 'puma'

  # Un autre serveur web... unicorn
  gem 'unicorn'

  # Une gem qui amélire grandement la rapidité d'execution de votre app #MakeItFast
  gem 'rails_12factor', '0.0.2'

end

group :development, :test do
  # Sqlite est le serveur installé en local sur nos machine, il est intégré dans ActiveRecord
  gem 'sqlite3'

  # Une gem de debuggae pour arreter le serveur, juste avant le moment où votre application bloque
  # Inserer 'binding.pry' dans contre controller / model ou vue et lancez une page qui "passe" par la ligne binding.pry
  # dans votre navigateur.
  gem 'pry'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
