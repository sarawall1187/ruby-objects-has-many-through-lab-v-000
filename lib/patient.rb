class Patient 
  attr_accessor :name, :doctor, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end
  
  def self.all 
   @@all 
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    @appointments << appointment
    appointment
  end
  
  def appointments 
    @appointments.select {|appointment| appointment.patient}
  end
  
  def doctors
    @appointments.collect {|appointment| appointment.doctor}
  end
end