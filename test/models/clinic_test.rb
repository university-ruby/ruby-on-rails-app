require "test_helper"

class ClinicTest < ActiveSupport::TestCase
  test "should not save clinic without created_at and updated_at" do
    clinic = Clinic.new
    assert_not clinic.save
  end
end
