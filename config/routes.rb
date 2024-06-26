Rails.application.routes.draw do
  
  get "/square/new", to: "games#new_square_calc", as: "new_square"
  post "/square_results", to: "games#square_results", as: "square_results"

  get "/square_root/new", to: "games#new_square_root_calc", as: "new_square_root"
  post "/square_root_results", to: "games#square_root_results", as: "square_root_results"
  # get "/square_root/results", to: "games#square_root_results", as: "square_root_results"

  get "/payment/new", to: "games#new_payment_calc", as: "new_payment"
  post "/payment/results", to: "games#payment_results", as: "payment_results"
  
  get "/random/new", to: "games#new_random_calc", as: "new_random"
  post "/random/results", to: "games#random_results", as: "random_results"
  
  get "/", to: "games#homepage"
  root 'games#welcome'
  get 'games/new_square_calc', to: 'games#new_square'
  post 'games/square_results', to: 'games#square_results'

  # get "/square/new", to: "games#new_square_calc", as: "new_square"
  # post "/square_results", to: "games#square_results", as: "square_results"

  # get "/square_root/new", to: "games#new_square_root_calc", as: "new_square_root"
  # post "/square_root_results", to: "games#square_root_results", as: "square_root_results"
  
  # get "/payment/new", to: "games#new_payment_calc", as: "new_payment"
  # post "/payment_results", to: "games#payment_results", as: "payment_results"

  # get "/random/new", to: "games#new_random_calc", as: "new_random"
  # post "/random_results", to: "games#random_results", as: "random_results"
  
  # get "/", to: "games#homepage"
  # root 'games#welcome'
  # get 'games/new_square_calc', to: 'games#new_square'
  # post 'games/square_results', to: 'games#square_results'
  # post 'games/square_root_results', to: 'games#square_root_results'
  # post 'games/random_results', to: 'games#random_results'
  # post 'games/payment_results', to: 'games#payment_results'

  # get "/square/new", to: "games#new_square", as: "new_square"
  # post "/square_results", to: "games#square_results", as: "square_results"
  # get "/square_root/new", to: "games#new_square_root", as: "new_square_root"
  # post "/square_root/results", to: "games#square_root_results", as: "square_root_results"
  # get "/payment/new", to: "games#new_payment", as: "new_payment"
  # post "/payment/results", to: "games#payment_results", as: "payment_results"
  # get "/random/new", to: "games#new_random", as: "new_random"
  # post "/random/results", to: "games#random_results", as: "random_results"
  # get "/", to: "games#homepage"
  # root 'games#welcome'
  # get 'games/new_square', to: 'games#new_square'
  # post 'games/square_results', to: 'games#square_results'
end
