class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointments.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
end