class TagsController < ApplicationController
  get '/tags/:slug' do
    @tag = Tag.unslug(params[:slug])
    erb :"/tags/show"
  end
end
