require("./lib/utils/prompt")
require("./lib/services/open_ai_services")

class Travel
  def initialize(city, country, start_date, end_date, origin)
    @city = city
    @country = country
    @start_date = start_date
    @end_date = end_date
    @origin = origin
  end

  def travel
    prompt = Utils::Prompt
    .start_prompt(@city, @country)
    .best_way(@origin)
    .itinerary(@start_date, @end_date)
    .locamotion_local
    .weather(@start_date)
    .violence_info
    .prompt

    response = OpenAiService.new.call(prompt)
    { :response => response }
  end
end
