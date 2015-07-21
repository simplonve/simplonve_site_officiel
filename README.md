# Site officiel de Simplon.ve

http://www.simplonve.co
Entierely made with ♥ by the Zar'dev Team of Simplon;VE

Tourne fièrement sous Ruby on Rails 4
Déploiement Heroku

## Plan du site

  - acceuil (intro partenaire)
  - la planète simplon
  - les intervenants extérieurs

### Installer Ruby On Rails

**IMPORTANT** Pour installer Rails sur l'ordinateur, vous devez d'abord avoir installer RVM sur l'ordinateur! Si ce n'est pas fait, allez voir sur `rvm.io`

Dans le terminal

`gem install rails`

Ensuite, installer la librairie dont rails a besoin pour tourner sur Linux
Pour Ubuntu/Debian :

`sudo apt-get install libpq-dev`

### Postgres en développement

La gem 'pg' est nécéssaire pour mettre en production sur Heroku, 
Pas en développement, dans le Gemfile elle est située à l'intérieur

 - SOIT 
Executer 

`bundle install --without-production`

 - SOIT
Installer le programme de base de données Postgres sur votre machine 

`gem install pg -v '0.18.1'`

### Créer la base de données

Excuter
`rake db:create`
`rake db:migrate`
`rake db:seed`

### Lancer le serveur local
Dans le terminal
`rails server`

Observez la beauté sur votre navigateur préféré `http://localhost:3000`

## Participez

Pour qui se sent motivé de poster une issue sur github, feel free !
