GuessWho::Application.routes.draw do
  root to: "stories#random"

  resources :stories do
    resources :votes
  end
end
