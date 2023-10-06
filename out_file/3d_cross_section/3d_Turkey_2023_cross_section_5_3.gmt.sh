gmt begin ../out_file/3d_cross_section/3d_Turkey_2023_cross_section_5_3.gmt png,pdf
gmt set MAP_FRAME_TYPE plain
gmt set MAP_GRID_PEN 0p,gray,-
gmt basemap -R35.5/39/36.5/38.5/-20/0 -JX10c/10c                 -JZ3c -Bxa1fg -Bya1fg -Bza10fg+l"Depth (km)" -BwSEnZ -p140/30
gmt makecpt -Cjet -T0.4/1.7/0.1 -Ic -H> ../out_file/3d_cross_section/3d_Turkey_2023_cross_section_5_.cpt
gmt plot3d ../out_file/3d_cross_section/3d_Turkey_2023_cross_section_5_3.gmt -C../out_file/3d_cross_section/3d_Turkey_2023_cross_section_5_.cpt -L -W0p,gray -p
echo 37.450000 37.550000 -15.000000 |gmt plot3d -Gyellow -W0.05p -Sa0.2c
gmt set FONT_ANNOT_PRIMARY 7p FONT_LABEL 8p
gmt set FONT_ANNOT_PRIMARY 7p FONT_LABEL 8p
gmt colorbar -C../out_file/3d_cross_section/3d_Turkey_2023_cross_section_5_.cpt -DjBL+w2.5c/0.3c+h+o1.3c/2c+ml -Ba0.5 -Bx+l"b value"
gmt end show
