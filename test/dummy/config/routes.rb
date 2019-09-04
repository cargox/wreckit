Rails.application.routes.draw do
  mount Zalenium::Chaos::Engine => "/_zalenium"
end
