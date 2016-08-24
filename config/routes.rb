Rails.application.routes.draw do
  # Scope manages languages
  scope "/:locale", locale: /ja|de|nl|en/ do

    # Devise
    devise_for :users

    # Public
    # get "about", to: "welcomes#about"

    # Private
    authenticate :user do
      resources :teams
      resources :users
      root to: "teams#index", as: :authenticated_root
    end

    # Roots
    root to: "welcomes#index", as: :public_root
    authenticated :user do
      root to: "teams#index"
    end

    # Reroute bad links to home
    get "*path", to: "welcomes#index"
  end

  # Redirect to language
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
  get "/*path", to: redirect("/#{I18n.default_locale}/%{path}", status: 302), constraints: {path: /(?!(ja|de|nl|en)\/).*/}, format: false
end
