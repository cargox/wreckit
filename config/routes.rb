require 'zalenium/chaos/router_constraint'
Zalenium::Chaos::Engine.routes.draw do
  constraints Zalenium::Chaos::RouterConstraint do
    get "error/500", to: proc { |_env| [500, { "Content-Type" => "text/plain" }, ["Oops"]] }
  end
end
