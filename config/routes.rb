Rails.application.routes.draw do
  get "/user/:id", to: "users#show", as: :user
end