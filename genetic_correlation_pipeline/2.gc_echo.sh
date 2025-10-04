if [ ${#} -eq "1" ]; then
	N_parallel=${1}
else
	N_parallel=10
fi

echo ""
echo ">>>"
echo "-----------------------------------------------------------------------------------"
echo "Please choose N_parallel to run."
echo ""
echo ">>> sh 2.gc_make.sh [N_parallel]"
echo ">>> nohup sh 2.gc_make.sh ${N_parallel} > zzz.log/2.gc_make.log 2>&1 &"
echo "-----------------------------------------------------------------------------------"
echo ""
