class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|date| date.doctor == self}
  end
  
  def patients
    self.appointments.collect {|date| date.patient}
  end
  
  def self.all
    @@all
  end
end