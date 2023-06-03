require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  test "should not save doctor without created_at and updated_at" do
    doctor = Doctor.new
    assert_not doctor.save
  end
end
