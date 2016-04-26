string.ulen = function(str)
    --local tab=string.utable(str)
    --return #tab
    local _, count = string.gsub(str, "[^\128-\193]", "")
    return count
end


string.utable=function(str)
    local tab={}
    for uchar in string.gfind(str, '[%z\1-\127\194-\244][\128-\191]*') do tab[#tab+1] = uchar end
    return tab
end

string.usub = function(str,sum)
    local tab=string.utable(str)
    local endp=""
    for j=1,sum,1 do
        if tab[j]~=nil then
            endp=endp..tab[j]
        end
    end
    return endp
end

