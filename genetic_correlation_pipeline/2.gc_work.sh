# ${1},${2}: file.sumstats.gz

python2 ldsc/ldsc.py \
	--rg ${1}.sumstats.gz,${2}.sumstats.gz \
	--ref-ld-chr ldsc/test_myself/eur_w_ld_chr/ \
	--w-ld-chr ldsc/test_myself/eur_w_ld_chr/ \
	--out zzz.gc./gc_${1}_${2}

echo "${1}_${2} Finished."
