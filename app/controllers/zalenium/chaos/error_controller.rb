require_dependency "zalenium/chaos/application_controller"

module Zalenium::Chaos
  class ErrorController < ApplicationController
    def index
      raise "Forced error"
    end
  end
end
