Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/toys", to: "toys#index", as: "show_toys")
  get("/toys/:id", to: "toys#show", as: "show_toy")

  put("/toys/:toy", to: "toys#update", as: "update_toy")
  patch("/toys/:toy", to: "toys#update")

  delete("/toys/:toy", to: "toys#delete", as: "delete_toy")
end
