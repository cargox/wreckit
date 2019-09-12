# frozen_string_literal: true

require "test_helper"

class Wreckit::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Wreckit
  end
end
