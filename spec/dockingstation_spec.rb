require "dockingstation"
require "bike"

describe DockingStation do
  it "releases bike" do
    expect(subject.release_bike?.instance_of? Bike).to eq true 
  end
  
  it "gets bike and checks its working" do
    expect(subject.release_bike?.working?).to eq true
  end

  it "registers a docked bike" do
    bike = Bike.new
    # Check if it returns an array of bike instances?
    expect(subject.dock(bike).first.instance_of? Bike).to eq true
  end

  it "returns the value of the dockedbike variable" do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.dockedbike.first.instance_of? Bike).to eq true
  end

  it "returns an error message when no dockedbike available" do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock()
    expect {dockingstation.dockedbike.is_empty}.to raise_error("no bikes available")
  end
end

