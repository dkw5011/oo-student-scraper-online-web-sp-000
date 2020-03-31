require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    binding.pry
    students = {}
  
    doc.css("div.roster-cards-container").each do |student|
      students = {
        :location => student.css("h2.profile-location").text,
        :name => student.css("div.vitals-text-container h1.profile-name").text
        }
      
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

