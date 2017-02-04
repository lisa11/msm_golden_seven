Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/new_form", {:controller => "directors", :action => "new_form"})
  get("/directors/:id", {:controller => "directors", :action => "detail"})
  get("/delete_director/:id", {:controller => "directors", :action => "destroy"})
  get("/add_director", {:controller => "directors", :action => "add_row"})
  get("/directors/:id/edit_form", {:controller => "directors", :action => "edit_form"})
  get("/update_director/:id", {:controller => "directors", :action => "update_info"})

  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/new_form", {:controller => "movies", :action => "new_form"})
  get("/movies/:id", {:controller => "movies", :action => "details"})
  get("/delete_movie/:id", {:controller => "movies", :action => "destroy"})
  get("/add_movie", {:controller => "movies", :action => "add_movie"})
  get("/movies/:id/edit_form", {:controller => "movies", :action => "edit_form"})
  get("/update_movie/:id", {:controller => "movies", :action => "update_movie"})

  get("/actors", {:controller => "actors", :action => "index"})
  get("/actors/new_form", {:controller => "actors", :action => "new_form"})
  get("/actors/:id", {:controller => "actors", :action => "detail"})
  get("/delete_actor/:id", {:controller => "actors", :action => "destroy"})
  get("/add_actor", {:controller => "actors", :action => "add_row"})
  get("/actors/:id/edit_form", {:controller => "actors", :action => "edit_form"})
  get("/update_actor/:id", {:controller => "actors", :action => "update_actor"})

end
