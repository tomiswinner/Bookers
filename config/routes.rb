Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "books#top"
  get "books" => "books#index",as: "index"
  get "books/:id" => "books#show"
  get "books/:id/edit" => "books#edit"
  
end
