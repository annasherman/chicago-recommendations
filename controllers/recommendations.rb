##every model has a correspnoding controller.
##no sharing controllers without a damn good reason.
##each has their own view.

class RecommendationsController < ApplicationController
##inherits bundler and gems
## inherits active record and not found.
get '/' do
  @recommendations = Recommendations.all
  erb :index
end

get '/api' do
  Recommendations.all.to_json
end

get '/api/:id' do
  p params
  return Recommendations.find(params[:id]).to_json
end

get '/create' do
 erb :create_rec
end

post '/create' do
  p params
  @rec = Recommendations.new
  @rec.contributor = params[:contributor]
  @rec.place = params[:place]
  @rec.notes = params[:notes]
  @rec.type_of_place = params[:type_of_place]
  @rec.save

  @recommendations = Recommendations.all

  erb :index
end


end
