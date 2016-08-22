Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#homepage'
  get '/contest_policy.pdf', to: redirect('/contest_policy.pdf')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
