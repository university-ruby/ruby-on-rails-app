require "test_helper"

class PatientCardTest < ActiveSupport::TestCase
  test "should not save patient card without created_at and updated_at" do
    patient_card = PatientCard.new
    assert_not patient_card.save
  end
end
