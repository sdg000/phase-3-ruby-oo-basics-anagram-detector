require "pry"
class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    #select (filter) returns array that match specified condition
    #iterate through all array elements, return each element that,
    # when split and sorted, matches @word splitted and sorted.
    def match(array)
        results = []
        array.select do |item|
            item.split('').sort == @word.split('').sort
        end
    end

end

come = Anagram.new('come')
binding.pry