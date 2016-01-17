if (!exists("otype")) otype="qt"

set term otype

if (exists("pdf")) {
	# set term pdfcairo enhanced font ',14' size 25.7cm,17cm
	set term pdfcairo enhanced font ',14' size 17cm,17cm
	set fit logfile '/dev/null'
}

set title "Zeit, die zum Verteilen der Daten benötigt wird"

set xlabel "n/1"
set ylabel "Runden/1"

set xr [0:120]

set xtics 10

freq = 2

e(x)=freq*(log(x)/log(3) + log(log(x)))

plot e(x) title "erwartete Zeit", "times.dat" using 1:2 title "Gemessene Zeiten" smooth bezier
