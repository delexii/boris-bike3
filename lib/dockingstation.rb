class DockingStation

attr_reader :dockedbike
  def initialize
    @dockedbike = []
  end
  
  def release_bike?
    # Ask docking station to release bike
    bike = Bike.new  
  end
  
  def dock(bike_instance_being_docked)
    @dockedbike.push(bike_instance_being_docked)
  end
  
  
  def is_empty
    @dockedbike.empty?
  end
end
