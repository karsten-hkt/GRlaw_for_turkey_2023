gmt begin ../out_file/zhou_result/zhou_Turkey_2023_6_3.gmt png,pdf
gmt makecpt -Cjet -T0.4/1.5/0.1 -Ic -H > ../out_file/zhou_result/zhou_Turkey_2023_6_.cpt
gmt basemap -JM4i -R34/41/35/40 -BENws -Bxaf+l"Long(deg)" -Byaf+l"Lat(deg)" 
gmt grdimage @earth_relief_30s -I+d -R34/41/35/40 
gmt plot ../out_file/zhou_result/zhou_Turkey_2023_6_3.gmt -R34/41/35/40 -JM4i -C../out_file/zhou_result/zhou_Turkey_2023_6_.cpt -W0.25p -L 
gmt makecpt -Cinferno -T0/30 -Ic -H > ../out_file/zhou_result/quake.cpt
gmt colorbar -C../out_file/zhou_result/quake.cpt -DjBR+w2c/0.3c+ml+o0.6c/0.7c+h -Bx+lDepth -By+lkm
gmt meca ../data/meca_turkey_6.dat -A -Sm0.5c -C../out_file/zhou_result/quake.cpt 
gmt plot ../data/fault.dat -W1p,black -JM4i 
gmt colorbar -C../out_file/zhou_result/zhou_Turkey_2023_6_.cpt -DjBL+w3c/0.3c+ml+o0.3c/0.3c -Bx -By+lb 
gmt end show