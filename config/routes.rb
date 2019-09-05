require "zalenium/chaos/router_constraint"
Zalenium::Chaos::Engine.routes.draw do
  constraints Zalenium::Chaos::RouterConstraint do
    get "error/500", to: "error#index", as: "chaos_error"
  end
end
