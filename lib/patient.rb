class Patient
  attr_reader :name, :appointments, :patients
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date, self)
    Appointment.new(doctor, date, self)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
    binding.pry
  end
  
  def doctor
    
  end
end