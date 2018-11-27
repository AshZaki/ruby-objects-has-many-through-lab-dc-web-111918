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
    Appointment.all.select {|appt| appt.doctor == self}
    # binding.pry
  end
  
  def patients
    # binding.pry
    patients = self.patients.select do |pt|
      pt.doctor == self
    end
    patients.collect do |patient|
      patient.doctor
    end
  end
end