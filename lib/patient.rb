class Patient
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor,date)
   Appointment.new(date, self, doctor)
  end 
  
  def appointments
    appointments.all.map do |appointment|
    appointment.patient == self
  end
  end 
  
end 