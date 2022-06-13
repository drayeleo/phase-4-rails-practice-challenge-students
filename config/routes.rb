Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: %i[index show create destroy update]
  resources :instructors, only: %i[index show create destroy update] do
    resources :students, only: [:index]
  end
end
