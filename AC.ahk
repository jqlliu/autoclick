

m1 := 0
m2 := 0
m3 := 0





nextInt = 25

minNext = 20
maxNext = 30

randomMult = 1
cd = 5

randomMin = 0.6
randomMax = 1.2

numPad7::m1=1
numPad7 Up::m1=0


numPad8::m2=1
numPad8 Up::m2=0

numPad9::m3=1
numPad9 Up::m3=0

^numPad7::m1=1
^numPad7 Up::m1=0


^numPad8::m2=1
^numPad8 Up::m2=0

^numPad9::m3=1
^numPad9 Up::m3=0


+numPad7::m1=1
+numPad7 Up::m1=0


+numPad8::m2=1
+numPad8 Up::m2=0

+numPad9::m3=1
+numPad9 Up::m3=0


iterate := 0
!^z::
while( 1 == 1) {
	if(m2 == 1){
		Click, Left Up
		
		sleep cd
		Click, Left, Down
		Random, cd, 4,8
		Click, Left, Up
	}
	if(m1 == 1){
		Click, Right, Down
		
		sleep cd
		Random, cd, 3,5
		Click, Right, Up
	}
	Sleep, nextInt * randomMult
	Random, nextInt, %minNext%,%MaxNext%
	Random, randomMult, %randomMin%,%randomMax%
}
return
!^s::
ExitApp
return