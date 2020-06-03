require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  
  def setup
    @region = Region.new(name: "Example Region")
  end

  test "should be valid" do
    assert @region.valid?
  end

  test "name should be present" do
    @region.name = ""
    assert_not @region.valid?
  end

  test "should not save without name" do
    region2 = Region.new
    assert_not region2.save
  end

end
