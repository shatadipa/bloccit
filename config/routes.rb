Rails.application.routes.draw do


  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end
  # resources :posts
  resources :questions
  resources :advertisements
  #resources :sponsored_posts

  get 'about' => 'welcome#about'
  root 'welcome#index'
  get 'welcome/contact'
  get 'welcome/faq'

end
