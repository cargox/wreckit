module Zalenium
  module Chaos
    class Engine < ::Rails::Engine
      isolate_namespace Zalenium::Chaos
    end
  end
end
