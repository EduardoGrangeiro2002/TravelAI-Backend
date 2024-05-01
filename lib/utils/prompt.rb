module Utils
  class Prompt
    def self.itinerary(start_date, end_date)
      @@prompt << "\nCreate a travel itinerary for my destination considering that I will stay from dates #{start_date} to #{end_date}"
      self
    end

    def self.best_way(origin)
      @@prompt << "\nConsidering that I am in #{origin}, what are the best ways I can get there?
      until my destination! Bring the pros and cons of each method. If it is by airport, tell me what is the best airport near where I am and the closest to the destination?"
      self
    end

    def self.locamotion_local()
      @@prompt << "\nWhat means of transportation are available in the region?"
      self
    end

    def self.violence_info()
      @@prompt << "\nWhat is the violence rate in this region and what precautions should I take."
      self
    end

    def self.weather(start_date)
      @@prompt << "\nWhat is the region's climate for date #{start_date} of the year, given the location's history."
      self
    end

    def self.start_prompt(city, country)
      @@prompt = "I am traveling to #{city} in country #{country} and I need you to bring me the following information:"
      self
    end

    def self.prompt
      @@prompt
    end
  end
end
