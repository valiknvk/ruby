words = Hash.new{0}

File.open("/Users/Valik/VSCodeProjects/ruby/text.txt", "r:UTF-8") do |f|
    f.each_line do |line|
        fields = line.split(" ")
        fields.each do |word|
            words["#{word}"] += 1       
        end
    end
end
print words.sort_by {|_key, value| value}.last 10