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
    Appointment.new(doctor, self, date)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
    
  end
  
  def doctors
    self.appointments.select do |doc|
      list = doc.doctor
      binding.pry
    end
  end
end