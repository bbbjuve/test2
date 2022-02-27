reset
PS=1
if(PS == 0) set term x11
if(PS == 1) set term postscript eps enhanced color "Times-Bold" 34
set xlabel "N_{ite}"
set ylabel "apf"
unset logscale x
unset logscale y
set xtics nomirror
set ytics nomirror
set key right bottom
set key font "Times,20" 
set format y "%3.2f" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
g(x)=1

if(PS == 1) set out "POM_adam_long.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adam, Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:15000]
set yrange [0.75:1.025]
set key above
set xtics 0, 3000, 15000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"LongNg=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 7 t "long",\
g(x) w l dt(3,1) lw 3 lc 8 notitle
exit

if(PS == 1) set out "POM_adadelta.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adadelta" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input1-act_func1-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 7 notitle     ,\
"Ng=00001-Input1-act_func2-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 6 notitle     ,\
"Ng=00001-Input1-act_func3-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 2 notitle     ,\
"Ng=00001-Input1-act_func4-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 1 notitle     ,\
"Ng=00001-Input1-act_func5-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 4 notitle     ,\
"Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 7 t "Tanh"    ,\
"Ng=00001-Input2-act_func2-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 6 t "Softplus",\
"Ng=00001-Input2-act_func3-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 2 t "SiLU"    ,\
"Ng=00001-Input2-act_func4-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 1 t "Mish"    ,\
"Ng=00001-Input2-act_func5-optimizer1-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 4 t "TanhExp" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input1-act_func1-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 7 notitle     ,\
"Ng=00001-Input1-act_func2-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 6 notitle     ,\
"Ng=00001-Input1-act_func3-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 2 notitle     ,\
"Ng=00001-Input1-act_func4-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 1 notitle     ,\
"Ng=00001-Input1-act_func5-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 4 notitle     ,\
"Ng=00001-Input2-act_func1-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 7 t "Tanh"    ,\
"Ng=00001-Input2-act_func2-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 6 t "Softplus",\
"Ng=00001-Input2-act_func3-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 2 t "SiLU"    ,\
"Ng=00001-Input2-act_func4-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 1 t "Mish"    ,\
"Ng=00001-Input2-act_func5-optimizer2-rescale0-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 4 t "TanhExp" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_rescale.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input2-act_func1-optimizer2-rescale1-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 7 t "Tanh"    ,\
"Ng=00001-Input2-act_func2-optimizer2-rescale1-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 6 t "Softplus",\
"Ng=00001-Input2-act_func3-optimizer2-rescale1-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 2 t "SiLU"    ,\
"Ng=00001-Input2-act_func4-optimizer2-rescale1-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 1 t "Mish"    ,\
"Ng=00001-Input2-act_func5-optimizer2-rescale1-initial0.dat"   every 1 u ($0):2 w l lw 3 lc 4 t "TanhExp" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_he.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, He ini." textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input2-act_func1-optimizer2-rescale0-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 7 t "Tanh"    ,\
"Ng=00001-Input2-act_func2-optimizer2-rescale0-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 6 t "Softplus",\
"Ng=00001-Input2-act_func3-optimizer2-rescale0-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 2 t "SiLU"    ,\
"Ng=00001-Input2-act_func4-optimizer2-rescale0-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 1 t "Mish"    ,\
"Ng=00001-Input2-act_func5-optimizer2-rescale0-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 4 t "TanhExp" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_rescalehe.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini." textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input2-act_func1-optimizer2-rescale1-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 7 t "Tanh"    ,\
"Ng=00001-Input2-act_func2-optimizer2-rescale1-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 6 t "Softplus",\
"Ng=00001-Input2-act_func3-optimizer2-rescale1-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 2 t "SiLU"    ,\
"Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 1 t "Mish"    ,\
"Ng=00001-Input2-act_func5-optimizer2-rescale1-initial1.dat"   every 1 u ($0):2 w l lw 3 lc 4 t "TanhExp" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_Nlay_Nuni1.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini., Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=03-Nuni=05-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(1,5)",\
"Nlay=03-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(1,10)" ,\
"Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(1,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_Nlay_Nuni2.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini., Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=07-Nuni=05-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(5,5)",\
"Nlay=07-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(5,10)" ,\
"Nlay=07-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(5,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_Nlay_Nuni3.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini., Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=12-Nuni=05-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(10,5)",\
"Nlay=12-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(10,10)" ,\
"Nlay=12-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(10,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adam_Nlay_Nuni4.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini., Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(1,15)",\
"Nlay=04-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(2,15)" ,\
"Nlay=05-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(3,15)" ,\
"Nlay=06-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 1 t "(4,15)",\
"Nlay=07-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 4 t "(5,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle


if(PS == 1) set out "POM_adam_Nlay_Nuni5.eps" 
set label 1 left  at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 right at graph 0.85, 0.55 "Adam, rescale, He ini., Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=08-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(6,15)",\
"Nlay=09-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(7,15)" ,\
"Nlay=10-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(8,15)" ,\
"Nlay=11-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 1 t "(9,15)",\
"Nlay=12-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"   every 1   u ($0):2 w l lw 3 lc 4 t "(10,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle


if(PS == 1) set out "POM_adam_Nbatch.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set label 3 left at graph 0.65, 0.45 "N_{batch}/epoch=50" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Epoch=0004-Nlay=03-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 7 t "N_{batch}=50",\
"Epoch=0020-Nlay=03-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 6 t "200",\
"Epoch=0100-Nlay=03-Nuni=10-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 2 t "1000",\
g(x) w l dt(3,1) lw 3 lc 8 notitle


if(PS == 1) set out "POM_adam_event.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adam, Mish" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat"  every 1 u ($0):2 w l lw 3 lc 7 t "1",\
"2Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 6 t "2",\
"3Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 2 t "3",\
"4Nlay=03-Nuni=15-Ng=00001-Input2-act_func4-optimizer2-rescale1-initial1.dat" every 1 u ($0):2 w l lw 3 lc 1 t "4",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

exit
-

if(PS == 1) set out "POM_adadelta_gauge.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1     u ($0/1    ):2 w l lw 3 lc 7 t "N_{gauge}=1"    ,\
"Ng=00010-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 10    u ($0/10   ):2 w l lw 3 lc 6 t "10",\
"Ng=00100-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 100   u ($0/100  ):2 w l lw 3 lc 2 t "100"    ,\
"Ng=01000-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1000  u ($0/1000 ):2 w l lw 3 lc 1 t "1000"    ,\
"Ng=10000-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 10000 u ($0/10000):2 w l lw 3 lc 4 t "10000" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adadelta_Nlay_Nuni1.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=03-Nuni=05-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(1,5)",\
"Nlay=03-Nuni=10-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(1,10)" ,\
"Nlay=03-Nuni=15-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(1,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adadelta_Nlay_Nuni2.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=07-Nuni=05-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(5,5)",\
"Nlay=07-Nuni=10-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(5,10)" ,\
"Nlay=07-Nuni=15-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(5,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adadelta_Nlay_Nuni3.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Nlay=12-Nuni=05-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "(N_{lay},N_{uni})=(10,5)",\
"Nlay=12-Nuni=10-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "(10,10)" ,\
"Nlay=12-Nuni=15-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "(10,15)" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_adadelta_Nbatch.eps" 
set label 1 left at graph 0.65, 0.65 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.65, 0.55 "Adadelta,Tanh" textcolor lt 8 font "Times,25" 
set label 3 left at graph 0.65, 0.45 "N_{batch}/epoch=50" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:5000]
set yrange [0.75:1.025]
set key above
set xtics 0, 1000, 5000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"epoch=0001-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 7 t "N_{batch}=50",\
"epoch=0004-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 6 t "200" ,\
"epoch=0020-Ng=00001-Input2-act_func1-optimizer1-rescale0-initial0.dat"   every 1   u ($0):2 w l lw 3 lc 2 t "1000" ,\
g(x) w l dt(3,1) lw 3 lc 8 notitle

exit

if(PS == 1) set out "POMlink_gauge.eps" 
set label 1 left at graph 0.5, 0.85 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2, link" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.5, 0.95 "" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:200000]
set yrange [0.7:1.005]
set xtics 0, 100000, 200000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input2-act_func1-optimizer1-rescale0-initial0.dat"         every 100 u 1:2 w l lw 3 lc 7 t "N_g=1,Adadelta(Tanh)",\
"Input2-act_func5-optimizer2-rescale0-initial0.dat"         every 100 u 1:2 w l lw 3 lc 6 t "1,Adam        (TanhExp)",\
"Ng=1000-Input2-act_func1-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 2 t "1000,Adadelta (Tanh)",\
"Ng=1000-Input2-act_func5-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 1 t "1000,Adam (TanhExp)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POM_initial.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.05, 0.2 "Adam(TanhExp)" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}(link),N_{ite}/100(Plaq)"
unset xrange
set xrange [0:1000]
set yrange [0.7:1.025]
set xtics 0, 25000, 100000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input1-act_func5-optimizer2-rescale0-initial0.dat"           u 1:2 w l lw 3 lc 7 t "Link",\
"Input1-act_func5-optimizer2-rescale0-initial1.dat"           u 1:2 w l lw 3 lc 6 t "Link(He ini.)",\
"Input2-act_func5-optimizer2-rescale0-initial0.dat" every 100 u ($1*0.01):2 w l lw 3 lc 2 t "Plaq",\
"Input2-act_func5-optimizer2-rescale0-initial1.dat" every 100 u ($1*0.01):2 w l lw 3 lc 1 t "Plaq(He ini.)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle


if(PS == 1) set out "POM_rescale.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2" textcolor lt 8 font "Times,25" 
set label 2 left at graph 0.05, 0.2 "Adadelta(Tanh)" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}(link),N_{ite}/100(Plaq)"
unset xrange
set xrange [0:1000]
set yrange [0.7:1.025]
set xtics 0, 200, 1000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input1-act_func1-optimizer1-rescale0-initial0.dat"           u 1:2 w l lw 3 lc 7 t "Link",\
"Input1-act_func1-optimizer1-rescale1-initial0.dat"           u 1:2 w l lw 3 lc 6 t "Link(rescale)",\
"Input2-act_func1-optimizer1-rescale0-initial0.dat" every 100 u ($1*0.01):2 w l lw 3 lc 2 t "Plaq",\
"Input2-act_func1-optimizer1-rescale1-initial0.dat" every 100 u ($1*0.01):2 w l lw 3 lc 1 t "Plaq(rescale)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POMlink_adadelta_optimizer.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2, Link" textcolor lt 8 font "Times,25" 
unset label 2
set xlabel "N_{ite}"
unset xrange
set xrange [0:100000]
set yrange [0.7:1.025]
set xtics 0, 25000, 100000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input2-act_func1-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 7 t "Adadelta(Tanh)",\
"Input2-act_func2-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 6 t "Adadelta(Softplus)",\
"Input2-act_func3-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 2 t "Adadelta(SiLU)",\
"Input2-act_func4-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 1 t "Adadelta(Mish)",\
"Input2-act_func5-optimizer1-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 5 t "Adadelta(TanhExp)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POMlink_adam_optimizer.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2, Link" textcolor lt 8 font "Times,25" 
unset label 2
set xlabel "N_{ite}"
unset xrange
set xrange [0:100000]
set yrange [0.7:1.025]
set xtics 0, 25000, 100000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input2-act_func1-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 7 t "Adam(Tanh)",\
"Input2-act_func2-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 6 t "Adam(Softplus)",\
"Input2-act_func3-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 2 t "Adam(SiLU)",\
"Input2-act_func4-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 1 t "Adam(Mish)",\
"Input2-act_func5-optimizer2-rescale0-initial0.dat" every 100 u 1:2 w l lw 3 lc 5 t "Adam(TanhExp)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POMplaq_adadelta_optimizer.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2, Plaq" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:1000]
set yrange [0.7:1.025]
set xtics 0, 200, 1000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input1-act_func1-optimizer1-rescale0-initial0.dat" u 1:2 w l lw 3 lc 7 t "Adam(Tanh)",\
"Input1-act_func2-optimizer1-rescale0-initial0.dat" u 1:2 w l lw 3 lc 6 t "Adam(Softplus)",\
"Input1-act_func3-optimizer1-rescale0-initial0.dat" u 1:2 w l lw 3 lc 2 t "Adam(SiLU)",\
"Input1-act_func4-optimizer1-rescale0-initial0.dat" u 1:2 w l lw 3 lc 1 t "Adam(Mish)",\
"Input1-act_func5-optimizer1-rescale0-initial0.dat" u 1:2 w l lw 3 lc 5 t "Adam(TanhExp)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

if(PS == 1) set out "POMplaq_adam_optimizer.eps" 
set label 1 left at graph 0.05, 0.1 "{/Symbol b}=(0,0.5), 2{/Symbol \264 }2, Plaq" textcolor lt 8 font "Times,25" 
set xlabel "N_{ite}"
unset xrange
set xrange [0:1000]
set yrange [0.7:1.025]
set xtics 0, 200, 1000
#set format x "%0.1t{/Symbol \264 }10^{%T}"
#set format x "10^{%T}"
plot\
"Input1-act_func1-optimizer2-rescale0-initial0.dat" u 1:2 w l lw 3 lc 7 t "Adam(Tanh)",\
"Input1-act_func2-optimizer2-rescale0-initial0.dat" u 1:2 w l lw 3 lc 6 t "Adam(Softplus)",\
"Input1-act_func3-optimizer2-rescale0-initial0.dat" u 1:2 w l lw 3 lc 2 t "Adam(SiLU)",\
"Input1-act_func4-optimizer2-rescale0-initial0.dat" u 1:2 w l lw 3 lc 1 t "Adam(Mish)",\
"Input1-act_func5-optimizer2-rescale0-initial0.dat" u 1:2 w l lw 3 lc 5 t "Adam(TanhExp)",\
g(x) w l dt(3,1) lw 3 lc 8 notitle

exit

