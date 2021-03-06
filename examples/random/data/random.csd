Example by Rory Walsh.

<CsoundSynthesizer>
<CsOptions>
;-odevaudio1 -b64 -g -idevaudio1
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2


instr 1

kfreq chnget "pitch"
kpan chnget "pan"
kamp chnget "amp"
kchanged changed kfreq                          
if(kchanged==1) then  
      event "i", 10, 0, 5, kfreq, kpan, kamp
endif     
endin


instr 10
aexp expon p6, p3, 0.001
a1 oscil aexp, p4, 1
outs a1*p5, a1*(1-p5)
endin
 
</CsInstruments>
<CsScore>
f 1 0 1024 10 1
i 1 0 [60 * 60 * 24]
</CsScore>
</CsoundSynthesizer>
