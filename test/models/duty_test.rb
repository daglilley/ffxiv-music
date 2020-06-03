require 'test_helper'

class DutyTest < ActiveSupport::TestCase

  def setup
    @duty_type = duty_types(:dungeon)
    @expansion = expansions(:arr)
    @duty = @duty_type.duties.build(name: "Sastasha", expansion: @expansion)
  end

  test "should be valid" do
    assert @duty.valid?
  end

  test "name should be present" do
    @duty.name = ""
    assert_not @duty.valid?
  end

  test "should not save without name" do
    duty2 = @duty_type.duties.build(expansion: @expansion)
    assert_not duty2.save
  end

  test "should belong to an expansion" do
    duty2 = @duty_type.duties.build(name: "Sastasha")
    assert_not duty2.save
  end

  test "should belong to a duty type" do
    duty2 = Duty.new(name: "Sastasha", expansion: @expansion)
    assert_not duty2.save
  end

end
