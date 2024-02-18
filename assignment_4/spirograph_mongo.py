import math

R=6
r=1
a=8

y = 34.02057103238646
x = -118.28541852997974
t = 0.00

print('[')

while t<15*math.pi:

	yt = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
	xt = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)

	ans = str(x+xt/1500)+","+str(y+yt/1500)
	print('{')
	print('"loc": [', ans , ']')
	print("},")

	t+=0.1

print(']')