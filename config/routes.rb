Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Toys
  get "/toys/new", to: "toys#new", as: "new_toy"
  post "/toys/new", to: "toys#create", as: "create_toy"

  get "/toys", to: "toys#index", as: "show_toys"
  get "/toys/:id", to: "toys#show", as: "show_toy"


  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"

  delete "/toys/:id", to: "toys#delete", as: "delete_toy"

  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy"

  # Manufacturers
  get "/manufacturers", to: "manufacturers#index", as: "manufacturers"
  get "/manufacturers/new", to: "manufacturers#new", as: "new_manufacturer"
  post "/manufacturers", to: "manufacturers#create"
  get "/manufacturers/:id", to: "manufacturers#show", as: "show_manufacturer"
  delete "/manufacturers/:id", to: "manufacturers#destroy", as: "delete_manufacturer"
  get "/manufacturers/:id/edit", to: "manufacturer#new", as: "edit_manufacturer"
  put "/manufacturers/:id", to: "manufacturer#update"
  patch "/manufacturers/:id", to: "manufacturer#update"
  

end
