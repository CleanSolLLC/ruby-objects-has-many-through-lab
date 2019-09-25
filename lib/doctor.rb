require 'pry'

class Doctor

	attr_reader :name

	@@all =[]

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def appointments
		Appointment.all.each {|appointment| appointment.doctor== self} 
	end

	def new_appointment(patient, date)
		Appointment.new(date, patient, self)
	end

	def patients
		self.appointments.collect do |appt|
		 appt.patient
		end
	end



end