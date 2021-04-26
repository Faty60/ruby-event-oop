#require "pry"
require "time"

class Event
    attr_accessor :start_date, :duration, :title, :attendees
    @@user_count = 0

    def initialize(starting_date, duration_of_event, title_of_event, participant)
        @start_date = starting_date
        @duration = duration_of_event
        @title = title_of_event
        @attendees = participant
        @@user_count = @@user_count + 1
    end 

#Décaler de 24h
    def postpone_24h
        return @start_date += 86400
    end 
# Calculer la date de fin
    def end_date
        return @start_date = @start_date + @duration
    end
# Savoir si un évènement est passé ou pas

    def is_past?
        return Time.now > @start_date 
    end 

    def future?
        return Time.now < @start_date 
    end

    def is_soon?
        return @start_date < Time.now + 1800
    end

    def to_s
        puts "> Titre : #{self.read_title}" 
        puts "> Date de début : #{start_date}"
        puts "> Durée  : #{duration} minutes"
        print "> Invités : "
        attendees.length.times do |index|
            if index > 0 
                print ", "
            end
            print "#{attendees[index]}"
        end
        puts
    end 

    def read_title
        return @title
    end

    def self.all
        return @@user_count
    end
end


#binding.pry
#puts "end of file"