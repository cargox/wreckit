module Zalenium
  module Chaos
    HEADER_KEY = 'X-Zalenium-Key'
    ENV_VAR_NAME = 'ZALENIUM_CHAOS_KEY'

    module RouterConstraint
      def self.matches?(request)
        expected_key = ENV[ENV_VAR_NAME]
        given_key    = request.headers[HEADER_KEY]

        expected_key && expected_key == given_key
      end
    end
  end
end
