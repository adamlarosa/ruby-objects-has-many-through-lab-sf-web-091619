class Doctor

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select { |info| info.doctor == self }
    end

    def new_appointment (patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        result = []
        appointments.select { |info| 
            result << info.patient
        }
        result
    end

    def self.all
        @@all
    end
end