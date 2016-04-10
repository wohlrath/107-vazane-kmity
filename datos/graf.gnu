set terminal epslatex size 18cm,12cm
set output 'graf.tex'

set title
set xlabel '$l$ (\si{cm})'
set ylabel '$\kappa$'
set grid x,y
set yrange[0:0.1]
set xrange[0:35]


f(x) = a*x+b
fit f(x) 'kappa.dat' u 1:2 via a,b 


plot 'kappa.dat' lw 3 with xyerror notitle



set terminal wxt
set output
