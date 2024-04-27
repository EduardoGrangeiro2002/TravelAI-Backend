module Utils
  class Prompt
    def self.itinerary(start_date, end_date)
      @@prompt << "\nMe monte um roteiro de viagem para meu destino considerando que irei ficar das datas #{start_date} até #{end_date}"
      self
    end

    def self.best_way(origin)
      @@prompt << "\nConsiderando que estou em #{origin} quais os melhores meios que tenho para chegar
      até meu destino! Traga os prós e contra de cada meio. Se for por aeroporto me traga qual o melhor aeroporto perto do local que eu estou e o mais próximo até o destino"
      self
    end

    def self.locamotion_local()
      @@prompt << "\nQuais é os meios de locamoção disponíveis na região"
      self
    end

    def self.violence_info()
      @@prompt << "\nQual é o índice de violência dessa região e quais cuidados eu devo ter."
      self
    end

    def self.weather(start_date)
      @@prompt << "\nQual é o clima da região para data #{start_date} do ano, dado o histórico do local."
      self
    end

    def self.start_prompt(city, country)
      @@prompt = "Estou viajando para #{city} no país #{country} e preciso que me traga as seguintes informações:"
      self
    end

    def self.prompt
      @@prompt
    end
  end
end
