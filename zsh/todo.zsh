export TODO=~/Dropbox/todo
function todo() { if [ $# -eq 0 ]; then cat $TODO; else echo "> $@" >> $TODO ; fi }
function todone() { sed -i ".bak" -e "/$*/d" $TODO; }

