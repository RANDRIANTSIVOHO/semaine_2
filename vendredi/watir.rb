require 'watir'

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("RANDRIANTSIVOHO")
search_bar.send_keys(:enter)
browser.close