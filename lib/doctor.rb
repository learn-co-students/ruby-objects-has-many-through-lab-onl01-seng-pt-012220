class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |apps|
            apps.doctor == self
        end
    end
    
    def new_appointment(patient,date)
        new_appointment = Appointment.new(date,patient,self)
    end

    def patients
        appointments.collect do |apps|
            apps.patient
        end
    end
end