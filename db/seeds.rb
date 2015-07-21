require 'csv'

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

