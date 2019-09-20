class Patient

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def new_appointment (doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select { |info| info.patient == self }
    end

    def doctors
        result = []
        appointments.select { |info| result << info.doctor }
        result
    end

    def self.all
        @@all
    end
end