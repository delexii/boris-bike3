require "dockingstation"

describe "dockingstation" do
  it "releases bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike?).to eq true
  end
  it "gets bike" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
end

# describe "dockingstation" do
#   it { is_expected.to release_bike }
# end
