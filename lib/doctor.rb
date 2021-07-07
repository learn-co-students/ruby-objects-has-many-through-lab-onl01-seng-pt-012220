class Doctor
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date) #come backk!
        new_app = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|a| a.doctor == self}
    end

    def patients
        patients = []
        appointments.collect{|a| patients << a.patient }
        patients
    end

    def self.all
        @@all
    end
end