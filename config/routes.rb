Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :questions
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
