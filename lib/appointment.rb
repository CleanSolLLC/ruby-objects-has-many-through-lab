require 'pry'

class Appointment

	attr_accessor :doctor, :patient
	attr_reader :name

	@@all = []

	def initialize(date, patient, doctor)
		@date = date
		@patient = patient
		@doctor= doctor
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment
		Appointment.all.select {|song| song.title == self} 
	end

	def new_song(name, genre)
		Song.new(name, genre)
	end

	def genres
		Song.all.select {|song| song.genre == artist} 
	end



end