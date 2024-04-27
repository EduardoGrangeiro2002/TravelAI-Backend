require("./lib/utils/prompt")
require "minitest/autorun"

class Prompt < Minitest::Test
  def test_prompt_generator
    city = "Curitiba"
    country = "Brasil"
    origin = "Bragança Paulista"
    start_date = "2024/04/20"
    end_date = "2024/04/27"

    result_prompt = Utils::Prompt
    .start_prompt(city, country)
    .best_way(origin)
    .itinerary(start_date, end_date)
    .locamotion_local
    .weather(start_date)
    .violence_info
    .prompt

    assert_equal "Estou viajando para Curitiba no país Brasil e preciso que me traga as seguintes informações:\nConsiderando que estou em Bragança Paulista quais os melhores meios que tenho para chegar\n      até meu destino! Traga os prós e contra de cada meio. Se for por aeroporto me traga qual o melhor aeroporto perto do local que eu estou e o mais próximo até o destino\nMe monte um roteiro de viagem para meu destino considerando que irei ficar das datas 2024/04/20 até 2024/04/27\nQuais é os meios de locamoção disponíveis na região\nQual é o clima da região para data 2024/04/20 do ano, dado o histórico do local.\nQual é o índice de violência dessa região e quais cuidados eu devo ter.", result_prompt
  end

end
