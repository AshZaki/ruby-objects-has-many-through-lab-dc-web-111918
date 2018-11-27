class Patient
  attr_reader :appointments, :patients, :doctor
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
    
  end
  
  def doctor
    self.all.select do |doc|
      doc.doctor
    end
  end
end