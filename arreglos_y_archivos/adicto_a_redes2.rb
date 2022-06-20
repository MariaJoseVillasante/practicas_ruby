def scan_addicts2(array)
    #print array
    result = []
    n = array.count
    n.times do |i|
        if array[i] >= 180
            result.push "mal"
        elsif 90 <= array[i] && array[i] < 180
            result.push "mejorable"
        elsif array[i] < 90
            result.push "bien"      
        end
    end
    print result
end
scan_addicts2([10,100,21,90,180,200])