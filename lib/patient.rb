class Patient
attr_accessor :appointment, :doctor

@@all = []

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, doctor)
    appointment.patient = self
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.patient = self}
  end
  
  def doctors
    appointments.collect{|appointment| appointment.doctor}
  end
  
end