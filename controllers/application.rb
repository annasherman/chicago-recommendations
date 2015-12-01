class ApplicationController < Sinatra::Base

##this used to be app.rb
##controllers used to organize code
##inheriting the abilities of Sinatra's Base. how cool is that wtf

  Bundler.require
  require 'bundler'


  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'chicago_recommendations'
  )
##specifying views folder
  set :views, File.expand_path('../../views',__FILE__)
  set :public, File.expand_path('../../public',__FILE__)

  not_found do
    erb :fourohfour
  end

end
