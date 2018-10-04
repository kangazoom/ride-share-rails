Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'


  resources :passengers, :trips, :drivers



  resources :drivers do
    resources :trips, include: [:index, :show]
  end

  

end
