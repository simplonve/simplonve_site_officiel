source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Un éditeur WYSIWYG
gem 'ckeditor'
# Une gem populaire pour uploader des images (attention en pushant sur Heroku (besoin d'un espace de stockage Amazon S3))
gem 'paperclip'
gem 'therubyracer', platforms: :ruby

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
  # Cette gem évite de voir le chargement des assets dans les logs serveur, elle facilite la lecture des logs
  gem 'rails-clean-logs'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'factory_girl'
  # Lancez la commande '$ rubocop' dans le terminal et rubocop corrige les erreurs de syntaxe légères
  gem 'rubocop', require: false
end
