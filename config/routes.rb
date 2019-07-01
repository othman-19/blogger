Rails.application.routes.draw do
   root to: 'articles#index'

   resources :articles

   resources :articles do
      resources :comments
   end
   resources :tags


   resources :tags do
      resources :tags
   end

   
end
