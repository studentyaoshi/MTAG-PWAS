disease_name=${1}

touch ${disease_name}.sumstats.gz ; rm ${disease_name}.sumstats.gz

# sumstats.gz
python2 ldsc/munge_sumstats.py \
	--sumstats ${disease_name}.ma \
	--N-col N \
	--merge-alleles ldsc/w_hm3.snplist \
	--out ${disease_name}

# heritability - h2
python2 ldsc/ldsc.py \
	--h2 ${disease_name}.sumstats.gz \
	--ref-ld-chr ldsc/eur_w_ld_chr/ \
	--w-ld-chr ldsc/eur_w_ld_chr/ \
	--out ${disease_name}.h2
