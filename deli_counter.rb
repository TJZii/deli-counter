# Write your code here.
def line(katz_deli)

    lineorder = ["The line is currently:"]
    order = 1

    if katz_deli[0] == nil
        puts "The line is currently empty."
        return
    end

    katz_deli.each do |customer|
        lineorder << "#{order}."
        lineorder << customer
        order += 1
    end

    puts lineorder.join(" ")

end

def take_a_number(katz_deli, name)
    newline = katz_deli
    position = katz_deli.size() + 1
    newline << name
    puts "Welcome, #{name}. You are number #{position} in line."
    return newline
end

def now_serving(katz_deli)
    if(katz_deli[0] == nil)
        puts "There is nobody waiting to be served!"
        return
    end
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift()
end