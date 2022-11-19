class BubbleSort
    attr_accessor :result

    def initialize(array=[])
        self.bubble_sort(array)
    end


    def bubble_sort(array)
        array_lenght = array.size
        return array if array_lenght <= 1
        
        loop do
            ordenado = false

            (array_lenght - 1).times do |i|
                if array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    ordenado = true
                end
            end
            
            break if not ordenado
        end

        self.result = array
        print result
    end

end

bubble_sort = BubbleSort.new([11,5,7,6,15])