class Doctor 
  attr_accessor :name 
  @@all = []
  
 def initialize(name)
  @name = name
  @@all << self 
 end    
 
 def self.all 
   @@all
 end 
 
 def new_appointment(patient,date)
  Appointment.new(date,patient,self)
 end 

 def appointments
   meals.map do |meal|
   meal.waiter
 end
end

    appointment.all.select do |appointment|
    appointment.doctor == self
  end
  end 
end 