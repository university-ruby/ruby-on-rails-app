require "test_helper"

class DepartmentTest < ActiveSupport::TestCase
  test "should not save department without created_at and updated_at" do
    department = Department.new
    assert_not department.save
  end
end
