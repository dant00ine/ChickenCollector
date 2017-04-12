class Chicken < ApplicationRecord

    CHICKEN_SITE = "http://chickenbreedslist.com/Chicken-Breeds.html"

    def self.getChickens
        chickensite = Nokogiri::HTML(open(CHICKEN_SITE))

        links = chickensite.css("a")
        names = links.css("font")

        names.each do |name|
            puts name.text.lstrip.rstrip
        end
    end
end
