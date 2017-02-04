class ActorsController < ApplicationController

  def index
    @list = Actor.all
    render("index.html.erb")
  end

  def detail
    id = params[:id]
    @actor = Actor.find(id)
    render("detail.html.erb")
  end

  def destroy
    id = params[:id]
    n = Actor.find(id)
    n.destroy
    redirect_to("/actors")
  end

  def new_form
    render("new_form.html.erb")
  end

  def add_row
    name = params[:actor_name]
    dob = params[:actor_dob]
    url = params[:actor_imagea_url]
    bio = params[:actor_bio]
    n = Actor.new
    n.name = name
    n.dob = dob
    n.image_url = url
    n.bio = bio
    n.save
    redirect_to("/actors")
  end

  def edit_form
    @id = Actor.find(params[:id])
    render("edit_form.html.erb")
  end

  def update_actor
    name = params[:actor_name]
    dob = params[:actor_dob]
    url = params[:actor_imagea_url]
    bio = params[:actor_bio]
    id = params[:id]
    n = Actor.find(id)
    n.name = name
    n.dob = dob
    n.image_url = url
    n.bio = bio
    n.save
    redirect_to("/actors")
  end










end
