require "test_helper"

class PatientTest < ActiveSupport::TestCase
  test "should not save patient without created_at and updated_at" do
    patient = Patient.new
    assert_not patient.save
  end
end
