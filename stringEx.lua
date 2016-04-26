string.ulen = function(str)
    local _, count = string.gsub(str, "[^\128-\193]", "")
    return count
end

string.ulist=function(str)
    local list={}
    for uchar in string.gfind(str, '[%z\1-\127\194-\244][\128-\191]*') do list[#list+1] = uchar end
    return list
end

string.usub = function(str,sum)
    local list=string.ulist(str)
    local substr=""
    for j=1,sum,1 do
        if list[j]~=nil then
            substr=substr..list[j]
        end
    end
    return substr
end

