def ftoc(ftemp)
    ctemp = (ftemp-32)*5/9
    return ctemp

end

def ctof(ctemp)
    ftemp = (ctemp*9.0/5)+32
    return ftemp
end


puts ctof(37)