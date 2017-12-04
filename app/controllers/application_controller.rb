require 'sinatra'
class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  get '/' do
    @title = "HEY"
    erb :index
  end

end
