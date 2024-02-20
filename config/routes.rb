Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :articles
end

# rails routes:
# pages       GET       /pages(.:format)                       pages#index
#             POST      /pages(.:format)                       pages#create
# new_page    GET       /pages/new(.:format)                   pages#new
# edit_page   GET       /pages/:id/edit(.:format)              pages#edit
# page        GET       /pages/:id(.:format)                   pages#show
#             PATCH     /pages/:id(.:format)                   pages#update
#             PUT       /pages/:id(.:format)                   pages#update
#             DELETE    /pages/:id(.:format)                   pages#destroy
