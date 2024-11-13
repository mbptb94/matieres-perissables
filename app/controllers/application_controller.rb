class ApplicationController < ActionController::Base
  # Rediriger vers la page d'accueil après la connexion
  def after_sign_in_path_for(resource)
    home_path  # Remplace "home_path" par le chemin de ta page d'accueil
  end
end
