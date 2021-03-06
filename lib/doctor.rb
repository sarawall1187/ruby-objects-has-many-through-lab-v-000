class Doctor 
  
  attr_accessor :name, :appointments, :patients
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date) 
   appointment = Appointment.new(date, patient, self)
   @appointments << appointment
   appointment
  end
  
  def appointments
    @appointments.select {|appointment| appointment.doctor}
  end
  
  def patients
    @appointments.collect {|appointment| appointment.patient }
  end
end