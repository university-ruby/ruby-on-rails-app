require "test_helper"

class SpecializationTest < ActiveSupport::TestCase
  test "should not save specialization without created_at and updated_at" do
    specialization = Specialization.new
    assert_not specialization.save
  end
end
