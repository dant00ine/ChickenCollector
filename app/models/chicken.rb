class Chicken < ApplicationRecord

    CHICKEN_SITE = "https://en.wikipedia.org/wiki/Chicken_breeds_recognized_by_the_American_Poultry_Association"

    # EGG_COLORS = "http://www.backyardchickens.com/a/egg-color-chart-find-out-what-egg-color-your-breed-lays"

    def self.getChickens

        doc = Nokogiri::HTML(open(CHICKEN_SITE))

        classes = []

        allSpanTags = doc.css('span')

        allSpanTags.each do |span|

            if /Class$/.match(span)
                classes.push(span)
            end

        end

        classes.each do |chickenClass|

            puts "parent of class"
            puts chickenClass.parent.next_element


        end

        # links = chickensite.css("a")
        # names = links.css("font")
        #
        # names.each do |name|
        #     puts name.text.lstrip.rstrip
        # end
    end
end
