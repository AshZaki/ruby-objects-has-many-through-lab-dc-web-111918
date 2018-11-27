class Patient
  attr_reader :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctor
    
  end
end