Rails.application.routes.draw do
  # Scope manages languages
  scope "(:locale)", locale: /#{I18n.available_locales.join('|')}/ do

    # Devise
    devise_for :users

    # Public
    # get "about", to: "welcomes#about"

    # Private
    authenticate :user do
      resources :teams
      resources :users
    end

    # Roots
    root to: "welcomes#index"

    # Reroute bad links to home
    get "*path", to: "welcomes#index"
  end

  # Redirect to language
  root to: redirect("#{I18n.default_locale}", status: 302), as: :redirected_root
  get "*path", to: redirect("#{I18n.default_locale}/%{path}", status: 302), constraints: {path: /(?!(#{I18n.available_locales.join('|')})\/).*/}, format: false
end
