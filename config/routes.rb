Rails.application.routes.draw do
  root to: "tasks#index"

  resources :tasks, except: %i[ show ] do
    collection do
      get :export_csv
    end
  end
 
=begin 
  - Ao utilizar resources sao criadas as rotas:
  index, show, new, create, edit, update, destroy
  - Rotas personalizadas sao criadas com 
  collection ou member
=end
  
  
end
