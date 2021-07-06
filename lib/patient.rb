class Patient
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|date| date.patient == self}
  end
  
  def doctors
    Appointment.all.collect {|date| date.doctor}
  end
  
  def self.all
    @@all
  end
  
end 