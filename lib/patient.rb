class Patient
    attr_accessor :name
    @@all = []

     def initialize(name)
         @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        new_appointment = Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select do |apps|
            apps.patient == self
        end
    end

    def doctors
        appointments.collect do |apps|
            apps.doctor
        end
    end




end