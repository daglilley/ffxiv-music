require 'test_helper'

class DutyTypeTest < ActiveSupport::TestCase

  def setup
    @duty_type = DutyType.new(name: "Dungeon")
  end

  test "should be valid" do
    assert @duty_type.valid?
  end

  test "name should be present" do
    @duty_type.name = ""
    assert_not @duty_type.valid?
  end

  test "should not save without name" do
    duty_type2 = Expansion.new()
    assert_not duty_type2.save
  end

end
