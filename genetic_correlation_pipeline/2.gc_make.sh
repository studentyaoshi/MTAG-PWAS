if [ ${#} -eq "1" ]; then
	N_parallel=${1}
else
	N_parallel=10
fi

mkdir -p zzz.gc. ; rm -rf zzz.gc. ; mkdir zzz.gc.

ls *.sumstats.gz | rev | cut -d\. -f3- | rev > zzz.gc.anno

touch 2.gc_test ; rm 2.gc_test*
cat zzz.gc.anno | while read list_x
do
	cat zzz.gc.anno | while read list_y
	do
		echo "sh 2.gc_work.sh ${list_x} ${list_y}" >> 2.gc_test
	done
done

spsnf 2.gc_test ${N_parallel} ; rm 2.gc_test
ls 2.gc_test_* | while read i ; do mv ${i} ${i}.sh ; done

for i in $(seq 1 ${N_parallel})
do
	sh 2.gc_test_${i}.sh > zzz.log/2.gc_test_${i}.log 2>&1 &
done

wait

echo "2.gc finished"
