require "pry"

class Movie < ActiveRecord::Base
    #attr_accessor :title, :release_date, :director, :lead, :in_theaters
    
    #def initialize (title: nil, release_date: nil, director: nil, lead: nil, in_theaters: nil)
        #self.title = title
        #self.release_date = release_date
        #self.director = director
        #self.lead = lead
        #self.in_theaters = in_theaters
    #end

    def self.create_with_title (title)
        new_movie = self.create(title: title)
    end

    def self.first_movie
        #Movie.first
        #movie = self.first
        #Movie.all[0]
        movie = Movie.first
        binding.pry
        movie
    end

    def self.last_movie
        movie = Movie.last
        movie
    end

    def self.movie_count
        Movie.all.count
    end

    def self.find_movie_with_id id
        Movie.find(id)
    end

    def self.find_movie_with_attributes attribute
        Movie.find_by(attribute)
    end

    def self.find_movies_after_2002
        #Movie.where(release_date: ? > 2002)
        Movie.where("release_date > 2002")
    end

    def update_with_attributes attributes
        #fill in
        self.update(attributes)
    end

    def self.update_all_titles title
        Movie.update(title: title)
        #binding.pry
    end

    def self.delete_by_id id
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end