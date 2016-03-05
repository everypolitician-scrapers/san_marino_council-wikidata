require 'wikidata/fetcher'

en_names = WikiData::Category.new( 'Category:Members of the Grand and General Council', 'en').member_titles
it_names = WikiData::Category.new( 'Categoria:Politici sammarinesi', 'it').member_titles
de_names = WikiData::Category.new( 'Kategorie:Mitglied des Consiglio Grande e Generale (San Marino)', 'de').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en_names, it: it_names, de: de_names }, output: true)
