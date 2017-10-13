#write your code here
def echo word
    word
end

def shout word
    word.upcase
end

def repeat word, num = 2
    complete = "#{word} " * num
    complete.chomp(" ")
end

def start_of_word word, num = 1
    word[0..(num -1)]
end

def first_word word
    index = word.index(" ")
    word[0..index -1]
end

def titleize word
    no_cap = ["and", "the", "or", "over"]
    # capitalizes the first word no matter what 
    word.capitalize!
    word.split.each{|i|
        if no_cap.include?(i) then
            i
        else
            i.capitalize!
        end
        }.join(" ")
end
