class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        if count > 0
            false
        else
            true
        end
    end
    
    def count
        @candies.length
    end

    def add_candy(candy)
        @candies << candy
    end

    def contains?(c_type)
        # @candies.any? do |candy|
        #     c_type == candy.type
        # end
        @candies.each do |candy|
            return true if candy.type == c_type
        end
        
        false
    end

end