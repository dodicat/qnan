#include "file.bi"
Function Getsize(bmp As String,byref w as long,byref h as long) As long 
    Open bmp For Binary As #1
    Get #1, 19, w
    Get #1, 23, h
    Close #1
    Return w*h
End Function

dim as long w,h

getsize("bob.bmp:123",w,h)
screenres w*2,h,32
dim as any ptr i=imagecreate(w,h)
bload "bob.bmp",i

bload "bob.bmp:123"
put(w,0),i,pset
sleep