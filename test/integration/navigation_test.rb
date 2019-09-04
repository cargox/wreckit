require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test "http 500 status with good key" do
    ENV['ZALENIUM_CHAOS_KEY'] = 'dummy-key'

    get '/_zalenium/error/500', headers: { 'X-Zalenium-Key' => 'dummy-key' }
    assert_equal 500, status
  end

  test "http 500 status with bad key" do
    ENV['ZALENIUM_CHAOS_KEY'] = 'dummy-key'

    assert_raises ActionController::RoutingError do
      get '/_zalenium/error/500', headers: { 'X-Zalenium-Key' => 'wrong-key' }
    end
  end

  test "unexisting route status" do
    assert_raises ActionController::RoutingError do
      get '/_zalenium/foo'
    end
  end
end
