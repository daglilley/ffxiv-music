require 'test_helper'

class ExpansionTest < ActiveSupport::TestCase

  def setup
    @expansion = Expansion.new(name: "A Realm Reborn", patch: 2)
  end

  test "should be valid" do
    assert @expansion.valid?
  end

  test "name should be present" do
    @expansion.name = ""
    assert_not @expansion.valid?
  end

  test "should not save without name" do
    expansion2 = Expansion.new(patch: 2)
    assert_not expansion2.save
  end

end
