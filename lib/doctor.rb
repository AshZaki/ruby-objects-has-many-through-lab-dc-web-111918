require 'pry'

class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient_name,date)
    Appointment.new(date, patient_name, self)
  end
  
  def appointments
    binding.pry
    Appointment.all.select {||appt| appt.doctor == self}
  end
  
  def patients
    
  end
end