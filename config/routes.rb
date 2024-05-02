Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  post("/insert_user", { :controller => "users", :action => "create" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  post("/update_user/:modify_username", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  post("/insert_photo", { :controller => "photos", :action => "create" }) 
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  post("/update_photo/:modify_id", { :controller => "photos", :action => "update" })
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "destroy" })
  post("/add_comment/:path_id", { :controller => "photos", :action => "comment" })
end

