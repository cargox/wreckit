# frozen_string_literal: true

require_dependency "wreckit/application_controller"

module Wreckit
  class ErrorController < ApplicationController
    def index
      raise "Forced error"
    end
  end
end
