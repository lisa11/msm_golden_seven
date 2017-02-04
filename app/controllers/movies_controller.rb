class MoviesController < ApplicationController

  def index
    @list = Movie.all
  end

  def details
    id = params["id"]
    @movie = Movie.find(id)
    render("details.html.erb")
  end

  def destroy
    id = params[:id]
    n = Movie.find(id)
    n.destroy
    redirect_to("/movies")
  end

  def new_form
    render("new_form.html.erb")
  end

  def add_movie
    title = params[:movie_title]
    year = params[:movie_year]
    duration = params[:movie_duration]
    description = params[:movie_description]
    image_url = params[:movie_image_url]
    n = Movie.new
    n.title = title
    n.year = year
    n.duration = duration
    n.description = description
    n.image_url = image_url
    n.save
    redirect_to("/movies")
  end

  def edit_form
    id = params[:id]
    @movie = Movie.find(id)
    render("edit_form.html.erb")
  end

  def update_movie
    title = params[:movie_title]
    year = params[:movie_year]
    duration = params[:movie_duration]
    description = params[:movie_description]
    image_url = params[:movie_image_url]
    id = params[:id]
    n = Movie.find(id)
    n.title = title
    n.year = year
    n.duration = duration
    n.description = description
    n.image_url = image_url
    n.save
    redirect_to("/movies")
  end




end
