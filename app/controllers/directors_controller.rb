class DirectorsController < ApplicationController

  def index
    @list = Director.all
    render("index.html.erb")
  end


end
