def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
      return "nil detected"
    elsif a > b && a > c
      return "a is bigger"
    elsif b > a && b > c
      return "b is bigger"
    else
      return "c is bigger"
    end
  end

def reverse_upcase_noLTA(str)
    return str.reverse.upcase.gsub(/[LTA]/, '')
    #essayer return string.reverse.upcase.delete("LTA") sinon
end

def array_42(array)
    array.each do |x|
        if x == 42
            return true
        end
    end
    return false
    #ecrire return array.any?(42) sinon

end

def magic_array(array)
    array.flatten.sort.map {|x| x * 2}.delete_if {|x| x % 3 == 0}.uniq.sort
end

