require 'sinatra'
class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  get '/' do
    @title = "We'd like to help."
    @resources = Resource.approved
    @tags = Tag.all
    erb :index
  end

  helpers do
    def format_tag_list
      tags = []
      @tags.each do |t|
        tags << "<a href='/tags/#{t.slug}'>#{t.name}</a>"
      end
      tags.join(" | ")
    end
  end

end
