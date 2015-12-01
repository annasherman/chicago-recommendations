Bundler.require
require 'bundler'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'chicago_recommendations'
)

get '/' do
  @recommendations = Recommendations.all
  erb :index
end

get '/api' do
  Recommendations.all.to_json
end
