[top]
components : spNoise

[spNoise]
type : cell
width : 30
height : 30
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : spNoise(-1,-1) spNoise(-1,0) spNoise(-1,1) 
neighbors : spNoise(0,-1)  spNoise(0,0)  spNoise(0,1)
neighbors : spNoise(1,-1)  spNoise(1,0)  spNoise(1,1)
initialvalue : 0
InitialCellsValue : spNoise.val
localtransition : spNoise-rule

[spNoise-rule] 
rule : 0 100 { (0,0) = 1 and trueCount < 2 } 
rule : 1 100 { (0,0) = 1 and trueCount > 2 } 
rule : 1 100 { (0,0) = 0 and trueCount > 7 }
rule : 0 100 { t }

