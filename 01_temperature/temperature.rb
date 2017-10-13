#write your code here
def ftoc(farenheit)
    celsius = farenheit - 32
    celsius *= 5
    celsius /= 9
end

def ctof(celsius)
    farenheit = celsius
    farenheit *= 9.0
    farenheit /= 5.0
    farenheit += 32.0
end