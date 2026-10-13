chmod +x *.sh
#gnome-terminal -- bash -c "./lio_driver.sh; exec bash" --window
#gnome-terminal -- bash -c "./pos_trans.sh; exec bash" --window
#gnome-terminal -- bash -c "./info_trans.sh; exec bash" --window 
#gnome-terminal -- bash -c "./serial.sh; exec bash" --window 
#gnome-terminal -- bash -c "python3 Quadruped_Racing_Param_GUI.py; exec bash" --window
gnome-terminal --tab --title="fastlio" -e "bash -c './lio_driver.sh; exec bash'" \
               --tab --title="pos" -e "bash -c './pos_trans.sh; exec bash'" \
               --tab --title="info" -e "bash -c './info_trans.sh; exec bash'" \
               --tab --title="serial" -e "bash -c './serial.sh; exec bash'" \
               --tab --title="GUI" -e "bash -c './ui.sh; exec bash'"
