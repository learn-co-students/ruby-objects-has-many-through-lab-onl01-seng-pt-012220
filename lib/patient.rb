class Patient

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def new_appointment(doctor, date)
        new_app = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|a| a.patient == self}
    end

    def doctors
        doctors = []
        appointments.collect{|a| doctors << a.doctor}
        doctors
    end
    def self.all
        @@all
    end

end