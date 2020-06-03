require 'test_helper'

class OrchestrionTest < ActiveSupport::TestCase

  def setup
    @orchestrion_type = orchestrion_types(:dungeons)
    @track = tracks(:riptide)
    @orchestrion = @orchestrion_type.orchestrions.build(track: @track)
  end

  test "should be valid" do
    assert @orchestrion.valid?
  end

  test "should belong to a track" do
    orchestrion2 = @orchestrion_type.orchestrions.build()
    assert_not orchestrion2.save
  end

  test "should belong to an orchestrion type" do
    orchestrion2 = Orchestrion.new(track: @track)
    assert_not orchestrion2.save
  end

end
