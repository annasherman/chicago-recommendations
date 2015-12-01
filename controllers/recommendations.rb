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


end
