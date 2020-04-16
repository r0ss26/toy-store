Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/toys", to: "toys#index", as: "toys")
  get("/toys/:toy", to: "toys#show", as: "toy")

  delete("/toys/:toy", to: "toys#delete", as: "delete")
end
