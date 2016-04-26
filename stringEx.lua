string.ulen = function(str)
    local _, count = string.gsub(str, "[^\128-\193]", "")
    return count
end

string.ulist=function(str)
    local list={}
    for uchar in string.gfind(str, '[%z\1-\127\194-\244][\128-\191]*') do list[#list+1] = uchar end
    return list
end

string.usub = function(str,i,j)
    local list=string.ulist(str)
    local substr=""
	if i==0 then i=1 end
	if j==0 then j=1 end
	i=i>0 and i or #list+i
	j=j>0 and j or #list+j
	if i>j then i=i+j;j=i-j;i=i-j; end	
    for k=i,j,1 do
        if list[k]~=nil then
            substr=substr..list[k]
        end
    end
    return substr
end

