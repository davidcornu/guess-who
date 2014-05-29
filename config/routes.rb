GuessWho::Application.routes.draw do
  root to: "stories#random"

  resources :stories, only: [:new, :create, :show] do
    resources :votes, only: [:create]
  end
end
