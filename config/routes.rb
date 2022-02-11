Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  
  # Can also be [get 'contacts/new, to: 'contacts#new'] but
  # the below has more functionality
  resources :contacts 
  get 'contact-us', to: 'contacts#new'
end
