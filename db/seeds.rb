require 'csv'
Citation.destroy_all
csv_text = File.read('./db/citations.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  citation = Citation.new
  citation.citation = row.to_hash["citation"]
  citation.auteur = row.to_hash["auteur"] 
  citation.save
end
