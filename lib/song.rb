require 'pry'

class Song

	attr_accessor :artist, :genre
	attr_reader :name

	@@all = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@all << self
	end

	def self.all
		@@all
	end

	def songs
		Song.all.select {|song| song.title == self} 
	end

	def new_song(name, genre)
		Song.new(name, genre)
	end

	def genres
		Song.all.select {|song| song.genre == artist} 
	end



end