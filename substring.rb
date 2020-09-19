dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (str, dictionary)
    matched =  {}

    dictionary.each do |word|
        regex = Regexp.new("(?<="+word+")", true)

        if str.match?(/#{word}/i)
            matched[word] = str.scan(regex).count
        end
    end

    return matched
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)