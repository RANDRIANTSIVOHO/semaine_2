require 'rubygems'
require 'nokogiri' 
require 'open-uri'

def price
	tolotra = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))
	tolotra.css('a.price').map do |money| money.text
	end
end

def programme
	tolotra = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))
	tolotra.css('a.currency-name-container.link-secondary').map do |log| log.text
	end
end

obscur = programme.zip(price).to_h
puts obscur
sleep(3600)