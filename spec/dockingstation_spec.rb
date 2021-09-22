require "dockingstation"
require "bike"

describe DockingStation do
  it "releases bike" do
    # return_object = subject.release_bike? 
    expect(subject.release_bike?.instance_of? Bike).to eq true 
  end
  
  it "gets bike" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
end

