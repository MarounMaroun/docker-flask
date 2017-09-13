# run inside the container to see how many processes are currently spawned
running_processes=`ps -ef | grep main | grep -v grep | wc -l`
echo "There are currently $running_processes running processes"
