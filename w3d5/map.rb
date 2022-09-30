class Map

    def initialize
        @map = Array.new {Array.new}
    end

    def get(key)
        @map.each_with_index do |subarr, i|
            if subarr.first == key
                return i
            end
        end
    end

    def set(key, value) #sets or changes. check for existence!!
        if @map.none? {|ele| ele.first == key}
        @map << [key, value]
        else @map[get(key)][1] = value
        end 
    end

    def delete(key)
        @map.delete_at(get(key))
    end

    def show
        @map
    end

end