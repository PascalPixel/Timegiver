Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  # Scope manages languages
  scope "/:locale", locale: /en|ja/ do

    # Devise
    devise_for :users

    # Public
    # get "about", to: "welcomes#about"

    # Private
    authenticate :user do
      namespace :admin do
        resources :teams
        resources :users
      end
    end

    # Roots
    root to: "welcomes#index", as: :public_root
    authenticated :user do
      root to: "admin#index"
    end

    # Reroute bad links to home
    get "*path", to: "welcomes#index"
  end

  # Redirect to language
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
  get "/*path", to: redirect("/#{I18n.default_locale}/%{path}", status: 302), constraints: {path: /(?!(en|ja)\/).*/}, format: false

end
