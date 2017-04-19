Rails.application.routes.draw do
  root 'welcome#home'

  get 'locations', to: "welcome#locations"
end
