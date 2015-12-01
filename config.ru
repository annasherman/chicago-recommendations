require 'sinatra/base'

require './controllers/application' ###ALWAYS LOAD THIS BISH FIRSt###
require './controllers/recommendations'


require './models/recommendations'

# run Sinatra::Application
map ('/') { run RecommendationsController }
# map ('/users') {run UsersController}
