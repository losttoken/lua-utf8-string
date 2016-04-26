# lua-utf8-string

####a group of lua functions to handler the UTF8 string  

---

### string.ulen(str)
string.ulen("abc窗外的麻雀在电线杆上多嘴")    
====>  15  

### string.ulist(str)
string.ulen("abc窗外的麻雀在电线杆上多嘴")    
====>  {"a","b","c","窗","外","的","麻","雀","在","电","线","杆","上","多","嘴"}  

### string.usub(str,i,j)  
string.usub("abc窗外的麻雀在电线杆上多嘴",1,1)  
====>  a  
string.usub("abc窗外的麻雀在电线杆上多嘴",1,4)  
====>  abc窗  
string.usub("abc窗外的麻雀在电线杆上多嘴",1,-1)  
====>  abc窗外的麻雀在电线杆上多嘴
string.usub("abc窗外的麻雀在电线杆上多嘴",1,-2)  
====>  abc窗外的麻雀在电线杆上多  
string.usub("abc窗外的麻雀在电线杆上多嘴",-2,-4)  
====>  杆上多  
string.usub("abc窗外的麻雀在电线杆上多嘴",-4,-2)  
====>  杆上多  
string.usub("abc窗外的麻雀在电线杆上多嘴",-4)  
====>  杆上多嘴  
string.usub("abc窗外的麻雀在电线杆上多嘴",5)  
====>  外的麻雀在电线杆上多嘴  

### string.ufind(str,pattern)  
string.ufind("abc窗外的麻雀在电线杆上多嘴","c窗外")  
====>  3,5  
string.ufind("abc窗外的麻雀在电线杆上多嘴","[^a]+")  
====>  2,15
string.ufind("abc窗外的麻雀在电线杆上多嘴","[^%a]+")  
====>  4,15  

###string.ucharAt(str,pos)  
string.ucharAt(abc窗外的麻雀在电线杆上多嘴,4)
====>  窗  
string.ucharAt(abc窗外的麻雀在电线杆上多嘴,-5)
====>  线  

###string.ureverse(str)  
string.ureverse("abc窗外的麻雀在电线杆上多嘴")  
=====>  嘴多上杆线电在雀麻的外窗cba  


