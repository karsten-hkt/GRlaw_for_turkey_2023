gmt begin turkey_buffer png,pdf
	gmt basemap -JM15c -R34/41/35/40 -Baf -BWSen
	gmt grdimage @earth_relief_30s -R34/41/35/40 -I+d -C../../gmt_draw_research_area/grid.cpt
	gmt colorbar -C../../gmt_draw_research_area/quake_depth.cpt -DjBR+w3c/0.3c+ml+o0.8c/0.4c -Bx+lDepth -By+lkm
	awk -F, '{if(NR>1)print $2,$3,$4,$7/20}' ../../data/data.csv | gmt plot -Sc -W0.05 -C../../gmt_draw_research_area/quake_depth.cpt
	gmt meca ../../data/meca_turkey_6.dat  -A -Sm0.5c -C../../gmt_draw_research_area/quake_depth.cpt
	gmt plot ../../data/fault.dat -W1p,black -JM15c
	gmt plot ../../data/cross_section_line.dat -W1.5p,yellow -JM15c
	gmt plot buffer_test_0.txt -W1.5p,blue -JM15c
gmt end show
