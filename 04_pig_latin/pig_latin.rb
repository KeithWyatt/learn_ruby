#write your code here
def translate input
    letters = ["a", "e", "i", "o", "u"]
    two_letter = %w[ bl fl gl pl br cr dr fr gr pr tr
        sk sl sp st sw ch sh th wh qu ]
    three_letter = %w[ spr str thr sch squ ]
    special = ["ie"]
    translation = []

    input.split.each{|i|
        if letters.include?(i[0]) then
            translation.push(i + "ay")
        elsif three_letter.include?(i[0..2]) then
            translation.push(i[3..-1] + i[0..2] + "ay")
        elsif two_letter.include?(i[0..1]) then
            translation.push(i[2..-1] + i[0..1] + "ay")
        elsif special.include?(i[0..-1]) then
            translation.push(i.slice!("ie") + i[2..-1] + "ay")
        else
            translation.push(i[1..-1] + i[0] + "ay")
        end
    }
    translation.join(" ")
end
