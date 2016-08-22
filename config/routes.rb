Rails.application.routes.draw do
  root to: 'pages#homepage'
  get '/草根盃＿比賽規章.pdf', to: '/草根盃＿比賽規章.pdf'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
