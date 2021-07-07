class Doctor

    attr_accessor :name, :appointment, :patient

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |apt|
        apt.doctor == self
    end
end

    def patients
        self.appointments.collect {|appointment| appointment.date}
    end

end