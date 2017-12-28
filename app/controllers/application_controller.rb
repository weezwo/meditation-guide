require 'sinatra'
class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  get '/' do
    @title = "We'd like to help."
    @resources = Resource.approved
    erb :index
  end

end
