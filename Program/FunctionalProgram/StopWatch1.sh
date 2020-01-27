
let start_time="$(date +%s)";
while [ 1 ]
do
let current_time="$(date +%s)";
let seconds=$current_time-$start_time;
echo -ne "\r$seconds"
sleep 1;
done
