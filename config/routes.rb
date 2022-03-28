Rails.application.routes.draw do

  # namespace the controllers without including the version number in the URI
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end
  # Future versions go ABOVE the default as Rails cycles through the routes top down until matches? returns true
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

end
