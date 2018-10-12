require 'rubygems'
require 'nokogiri' 
require 'open-uri'


def adress_of_deput(names)
	tolotra = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{names}#deputes-contact"))
	tolotra.css('a.email').map do |email| email.text 
	end
end

def lien_of_deput
	tolotra = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
	tolotra.css('.col3 li a').map do |url| url = url['href'] 
	end
end

lien_of_deput.map{|url|adress_of_deput(url)}

def name_of_deput
	tolotra = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
	tolotra.css('.col3 li a').map do |names| names.text
	end
end
deput = name_of_deput.zip(lien_of_deput.map{|url|adress_of_deput(url)}).to_h
puts deput
