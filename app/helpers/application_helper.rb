module ApplicationHelper
    
    def time_left()
        t = (question.fixture_date - DateTime.now).to_i
        
        t = math
        mm, ss = t.divmod(60)            #=> [4515, 21]
        hh, mm = mm.divmod(60)           #=> [75, 15]
        dd, hh = hh.divmod(24)           #=> [3, 3]
        "%d days, %d hours, %d minutes and %d seconds" % [dd, hh, mm, ss]
    end
    
    def get_season()
        
        time = Time.new
        
        if(time.month >= 3) && (time.month <= 5)
            "Yeah it's spring!"
        elsif(time.month > 5) && (time.month <= 8)
            "Everyone love summer"
        elsif(time.month > 8) && (time.month <= 10)
            "It's fall!"
        else
            "Yuck winter."
        end
    end
    
    def hello_greeting()
        time = Time.new
        
        if(time.hour >= 0) && (time.hour < 12)
            "Good morning, "
        elsif(time.hour >= 12) && (time.hour < 17)
            "Good afternoon, "
        elsif(time.hour >= 17) && (time.hour <= 24)
            "Good evening, "
        end
    end
    
    def random_fact()
        opening = ["The Wisdom of the Crowd is a theory which claims all the answers added together, divided by the total number of answers can be very close to the correct answer.",
            "What kind of bet are you looking at today? Football? Rugby? Horse-racing?",
            "Some people consider an alligator's tooth to bring them luck with gambling!",
            "Thanks for using Benchmark Your Bet!" ,
            "The more people who vote on an answer, the stronger the collective opinion will be. Share it around to everyone you know!"]
        
        "#{opening[rand(5)]}"
    end
    
    def get_random_number(max_value = 10)
        rand(max_value)
    end
    
    def get_random_welcome()
        opening = ["What a great day.",
            "Welcome to our site.",
            "Thank you for stopping by."]
        
        middle = ["middle1.",
            "middle2",
            "middle3"]
        
        ending = ["end1",
            "end2",
            "end3"]
        
        "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
        
    end
    
    def count_to_10
        x = 2
        number_list = "1"
        
        loop do
            number_list = number_list + ", " + x.to_s
            x += 1
            break if x > 10
        end
        
        "#{number_list}"
    end
end
