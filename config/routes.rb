Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# resources :books
  root :to => "books#top"
  get "books" => "books#index",as: "books"
  get "books/:id" => "books#show",as: "book"
  get "books/:id/edit" => "books#edit",as:"edit"


  patch "books/:id" => "books#update"
  post "books" => "books#create"
  delete "books/:id" => "books#destroy",as:"destroy"
end
