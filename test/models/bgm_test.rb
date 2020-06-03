require 'test_helper'

class BgmTest < ActiveSupport::TestCase

  def setup
    @duty = duties(:sastasha)
    @zone = zones(:uldah)
    @track = tracks(:riptide)
    @duty_bgm = @duty.bgms.build(track: @track, context: "Background")
    @zone_bgm = @zone.bgms.build(track: @track, context: "Background")
  end

  test "should be valid" do
    assert @zone_bgm.valid?
    assert @duty_bgm.valid?
  end

  test "should belong to a track" do
    duty_bgm2 = @duty.bgms.build(context: "Background")
    zone_bgm2 = @zone.bgms.build(context: "Background")
    assert_not duty_bgm2.save
    assert_not zone_bgm2.save
  end

  test "should belong to an instance" do
    bgm2 = @track.bgms.build(context: "Background")
    assert_not bgm2.save
  end

end
