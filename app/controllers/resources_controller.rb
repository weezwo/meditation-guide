class ResourcesController < ApplicationController
  get '/resources/new' do
    erb :"resources/new"
  end

  post '/resources/create' do
    resource = Resource.create(params[:resource])
    redirect_to '/'
  end
end
