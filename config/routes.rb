Rails.application.routes.draw do
  # Rutas anidadas para Championships, Matches y Bets
  resources :championships do
    resources :matches do
      resources :bets
    end
  end

  # Ruta para ver el ranking de puntos (leaderboard)
  get 'leaderboard', to: 'championships#leaderboard', as: :leaderboard

  # Define tu ruta raíz (podrías cambiarla según la página inicial que quieras)
  root "championships#index"

  # Ruta de health check (no es necesario cambiarla, es para chequeo de salud de la app)
  get "up" => "rails/health#show", as: :rails_health_check

  # Rutas para los archivos del Progressive Web App (PWA)
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
