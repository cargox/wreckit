# frozen_string_literal: true

require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "http 500 status with good key" do
    ENV["WRECKIT_API_KEY"] = "dummy-key"
    assert_raises RuntimeError do
      get "/_wreckit/error/500", headers: { "X-Wreckit-Key" => "dummy-key" }
    end
  end

  test "http 500 status with bad key" do
    ENV["WRECKIT_API_KEY"] = "dummy-key"

    assert_raises ActionController::RoutingError do
      get "/_wreckit/error/500", headers: { "X-Wreckit-Key" => "wrong-key" }
    end
  end

  test "unexisting route status" do
    assert_raises ActionController::RoutingError do
      get "/_wreckit/foo"
    end
  end
end
