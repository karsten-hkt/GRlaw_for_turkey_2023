gmt begin ../out_file/zhou_result/zhou_Turkey_2023_cross_section_6_0.gmt png,pdf
gmt makecpt -Cjet -T0.4/1.7/0.1 -Ic -H> ../out_file/zhou_result/zhou_Turkey_2023_cross_section_6_.cpt
gmt plot ../out_file/zhou_result/zhou_Turkey_2023_cross_section_6_0.gmt -R-100.000000/170.000000/0.000000/25.000000 -JX5i/-0.462963i -C../out_file/zhou_result/zhou_Turkey_2023_cross_section_6_.cpt -W0.01p,white -L -BENws         -Bxaf+l"Distance to Epicenter(km)" -Byaf+l"Dep(km)" --FONT_LABEL=8p,Helvetica,black
gmt plot ../out_file/cross_section/m_up_3.txt -Ggray -W0.05p -Sc 
echo 0 15.000000 |gmt plot -Ggray -W0.05p -Sc0.1c -l"Mw>3"
echo 0 15.000000 |gmt plot -Gyellow -W0.05p -Sa0.2c -l"Mw7.8"
gmt plot ../out_file/zhou_result/epi.txt -Gblue -W0.05p -Sa0.2c -l"large_quake"
gmt colorbar -DJBR+w0.8/0.1+o-0.6c/-0.95c -C../out_file/zhou_result/zhou_Turkey_2023_cross_section_6_.cpt -Bxaf -By+l"b" --FONT_ANNOT_PRIMARY=3p,Helvetica,black
gmt legend -DjBL+o0.01c/0.01c --FONT_ANNOT_PRIMARY=4.5p,1,black
gmt end show