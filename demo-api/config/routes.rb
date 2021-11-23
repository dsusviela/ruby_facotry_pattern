Rails.application.routes.draw do
  get "/revenues" => "revenues#index"
  get "/power" => "power#index"
  get "/downloads" => "downloads#index"
  get "/reviews" => "reviews#index"
end
