Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/toys", to: "toys#index")
  get("/toys/:toy", to: "toys#show", as: "toy")

  post("/toys/:toy/delete", to: "toys#delete", as: "delete")
end
