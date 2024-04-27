require 'sinatra'
require './lib/model/travel'
require 'sinatra/json'

set :bind, '0.0.0.0'

post '/travel' do
  required_params = [:city, :country, :start_date, :end_date, :origin]
  unless required_params.all? { |param| params[param] && !params[param].empty? }
    status 400
    return json({ error: "Missing required parameters" })
  end
  begin
    response = Travel.new(
      params[:city],
      params[:country],
      params[:start_date],
      params[:end_date],
      params[:origin]
    ).travel

    json response
  rescue StandardError => e
    status 500
    json({ error: "Internal Server Error #{e.message}" })
  end
end

get '/' do
  'Hello world!'
end
