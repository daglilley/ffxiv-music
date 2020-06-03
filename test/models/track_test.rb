require 'test_helper'

class TrackTest < ActiveSupport::TestCase

  def setup
    @track = Track.new(name: "A Fine Death")
  end

  test "should be valid" do
    assert @track.valid?
  end

  test "name should be present" do
    @track.name = ""
    assert_not @track.valid?
  end

  test "should not save without name" do
    track2 = Track.new()
    assert_not track2.save
  end

end
