
set xr [0:200]

plot log(log(x)) title "ln(ln(x))", "times.dat" using 1:2 title "Messwerte"
