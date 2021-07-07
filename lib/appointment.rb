require 'pry'

class appointment
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, patient, appointment)
    @name = name
    @patient = patient
    @appointment = appointment
    @@all << self
    
  end
end

ferris = Patient.new("Ferris Bueller")
doogie = Doctor.new("Doogie Howser")
 
new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)

