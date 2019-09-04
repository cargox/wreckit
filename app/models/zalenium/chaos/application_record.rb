module Zalenium
  module Chaos
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
