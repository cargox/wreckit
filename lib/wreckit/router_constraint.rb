module Wreckit
  HEADER_KEY = "X-Wreckit-Key".freeze
  ENV_VAR_NAME = "WRECKIT_API_KEY".freeze

  module RouterConstraint
    def self.matches?(request)
      expected_key = ENV[ENV_VAR_NAME]
      given_key = request.headers[HEADER_KEY]

      expected_key && expected_key == given_key
    end
  end
end
