Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end
 
  resources :categories do
    resources :tasks
    end

end
