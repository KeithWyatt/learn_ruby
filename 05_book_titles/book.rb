class Book
    attr_reader :title

    def title=(name)
        no_cap = ["and", "the", "or", "over", "in", "of", "a", "an"]
        # capitalizes the first word no matter what 
        name.capitalize!
        @title = name.split.each{|i|
        if no_cap.include?(i) then
            i
        else
            i.capitalize!
        end
        }.join(" ")
        
    end

end

