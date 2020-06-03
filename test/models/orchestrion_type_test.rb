require 'test_helper'

class OrchestrionTypeTest < ActiveSupport::TestCase

  def setup
    @orchestrion_type = OrchestrionType.new(name: "Trials II")
  end

  test "should be valid" do
    assert @orchestrion_type.valid?
  end

  test "name should be present" do
    @orchestrion_type.name = ""
    assert_not @orchestrion_type.valid?
  end

  test "should not save without name" do
    orchestrion_type2 = OrchestrionType.new()
    assert_not orchestrion_type2.save
  end

end
