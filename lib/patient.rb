class Patient
  attr_reader :appointments, :patients, :doctors
  attr_accessor :name
  
  @@all = []
  
   def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
    
  end
  
  def doctors
    self.appointment.select do |doc|
      binding.pry
      doc.name
    end
  end
end