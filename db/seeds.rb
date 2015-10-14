require 'csv'
require 'json'

#Détruire puis reconstruire les données la table Citation

Citation.destroy_all

citations_text = File.read('./db/citations.csv')
citations_ary = CSV.parse(citations_text, :headers => true)

citations_ary.each do |row|
  citation = Citation.new
  citation.citation = row.to_hash["citation"]
  citation.auteur = row.to_hash["auteur"] 
  citation.save
end


#Construire les données de la table Intervenant

intervenant_text = File.read('./db/intervenants.csv')
intervenants_ary = CSV.parse(intervenant_text, :headers => true)

intervenants_ary.each do |row|
  intervenant = Calendrier.new
  intervenant.nom =         row.to_hash["nom"]
  intervenant.prenom =      row.to_hash["prenom"] 
  intervenant.description = row.to_hash["description"] 
  intervenant.date =        row.to_hash["date"] 
  intervenant.save
end

parsed_json = JSON.parse(File.read('db/simploniens.json'))
parsed_json.each do |data|
  @user = User.new
  @user.name = data["name"]
  @user.password = ENV[data["name"].split.first.upcase]
  @user.title = data["title"]
  @user.tags = data["tags"]
  @user.image = data["image"]
  @user.desc = data["desc"]
  @user.email = data["email"]
  @user.linkedin = data["linkedin"]
  @user.twitter = data["twitter"]
  @user.github = data["github"]
  @user.online = false
  @user.save
end
