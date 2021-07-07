require 'pry'

class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, patient, appointment)
    @name = name
    @patient = patient
    @appointment = appointment
    @@all << self
    
  end
end


doogie = Doctor.new("Doogie Howser")

  
  