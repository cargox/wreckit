# frozen_string_literal: true

require "wreckit/router_constraint"
Wreckit::Engine.routes.draw do
  constraints Wreckit::RouterConstraint do
    get "error/500", to: "error#index", as: "chaos_error"
  end
end
