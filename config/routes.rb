Rails.application.routes.draw do
 root "main#index"

 get  "register", to: "user#new"
 post "register", to: "user#create"

 get  "login", to: "sessions#new"
 post "login", to: "sessions#create"
 delete "logout", to: "sessions#destroy"
end
