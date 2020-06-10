class Patient

@@all = []

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, doctor)
    appointment.patient = self
  end
  
end