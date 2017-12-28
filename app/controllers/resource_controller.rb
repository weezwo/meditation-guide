class ResourceController < ApplicationController
  get '/resources/new' do
    erb :"resources/new"
  end

  post '/resources/create' do
    resource = Resource.create(params[:resource])
    raise resource.inspect
  end
end
