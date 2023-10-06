#data base on Date,Longitude,Latitude,Depth,Rms,Type,Magnitude,Location,EventID
#the first line can not use
 
cat > grid.cpt << EOF
-3000 black 0 blue
0 white 2000 gray
EOF

cat > ../data/meca_turkey_6.dat <<EOF
37.45 37.55 15 -0.37 -5.11 5.48 -1.41 1.35 1.30 27 38 37 202302060117A
36.84 37.21 26 -0.23 -1.50 1.73 0.62 0.01 -0.64 26 37.5 36.5 202302060128A
37.22 38.08 12 -0.44 0.30 0.15 1.19 -3.17 3.13 27 36 38.5 202302061024A
37.64 37.73 21 0.61 -1.66 1.05 0.90 -0.10 -1.39 24 38.5 37.5 202302070313A
37.63 37.92 21 -0.14 1.59 -1.45 -0.62 0.05 1.15 24 39 37.85 202302081111A
36.03 36.06 12 -1.08 -1.99 3.07 2.11 -2.10 0.78 25 36.8 35.6 202302201704A
EOF

Cat > ../data/cross_section_line.dat << EOF
36.0 37.0
39 38.3
EOF

gmt begin turkey_2023_doublet_quakes png,pdf
	gmt basemap -JM15c -R34/41/35/40 -Baf -BWSen
	gmt grdimage @earth_relief_30s -R34/41/35/40 -I+d -Cgrid.cpt
	gmt makecpt -Cinferno -T0/30 -Ic -H > quake_depth.cpt
	gmt colorbar -Cquake_depth.cpt -DjBR+w3c/0.3c+ml+o0.8c/0.4c -Bx+lDepth -By+lkm
	awk -F, '{if(NR>1)print $2,$3,$4,$7/20}' ../data/data.csv | gmt plot -Sc -W0.05 -Cquake_depth.cpt 
	gmt meca ../data/meca_turkey_6.dat  -A -Sm0.5c -Cquake_depth.cpt
	gmt plot ../data/fault.dat -W1p,black -JM15c
	gmt plot ../data/cross_section_line.dat -W1.5p,yellow -JM15c
gmt end show
