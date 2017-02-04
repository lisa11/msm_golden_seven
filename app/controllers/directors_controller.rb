class DirectorsController < ApplicationController

  def index
    @list = Director.all
    render("index.html.erb")
  end

  def detail
    id = params["id"]
    @director = Director.find(id)
    render("detail.html.erb")
  end

  def destroy
    id = params["id"]
    director = Director.find(id)
    director.destroy
    redirect_to("/directors")
  end

  def new_form
    render("new_form.html.erb")
  end

  def add_row
    name = params[:director_name]
    dob = params[:director_dob]
    url = params[:director_imagea_url]
    bio = params[:director_bio]
    n = Director.new
    n.name = name
    n.dob = dob
    n.image_url = url
    n.bio = bio
    n.save
    redirect_to("/directors")
  end

  def edit_form
    @id = Director.find(params[:id])
    render("edit_form.html.erb")
  end

  def update_info
    name = params[:director_name]
    dob = params[:director_dob]
    url = params[:director_imagea_url]
    bio = params[:director_bio]
    id = params[:id]
    n = Director.find(id)
    n.name = name
    n.dob = dob
    n.image_url = url
    n.bio = bio
    n.save
    redirect_to("/directors")
  end

end
