Rails.application.routes.draw do
  match "deal", to: "cards#deal", as: "deal", via: [:get]
end
