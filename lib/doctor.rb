class Doctor
attr_accessor :name, :appointment

@@all = []

  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    appointment.doctor = self
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.collect{|appointment| appointment.patient}
  end

end