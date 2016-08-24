Rails.application.routes.draw do

  root to: 'pages#homepage'

  get '/contest_policy.pdf', to: redirect('/contest_policy.pdf')

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', sessions: 'users/sessions' }

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
