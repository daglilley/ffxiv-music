require 'test_helper'

class ZoneTest < ActiveSupport::TestCase

  def setup
    @region = regions(:thanalan)
    @zone = @region.zones.build(name: "Uldah")

    @mainzone = zones(:uldah)
    @subzone = @mainzone.zones.build(name: "Barracks")

    #@subzone = @zone.zones.build(name: "Barracks")
  end

  test "should be valid" do
    assert @zone.valid?
  end

  test "name should be present" do
    @zone.name = ""
    assert_not @zone.valid?
  end

  test "should not save without name" do
    zone2 = @region.zones.build()
    assert_not zone2.save
  end

  test "zone should belong to region" do
    assert @zone.area.is_a?(Region)
  end

  test "subzone should belong to a zone" do
    assert @subzone.area.is_a?(Zone)
  end

end
