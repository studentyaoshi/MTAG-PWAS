# python mtag_fusion.py ${1}.posma ${1}.mtag.overlap ${1}.mtag.posma

import os,sys
document1 = open ( sys.argv[1] , 'r' ) # [${1}.posma - ori]
document2 = open ( sys.argv[2] , 'r' ) # [${1}.mtag.overlap]
document3 = open ( sys.argv[3] , 'w+') # [${1}.mtag.posma]

dic = {}

for i in document2:
	line = i.strip().split('\t')
	dic[ line[2] ] = i

document3.write(document1.readline())
for i in document1:
	line = i.strip().split('\t')
	if dic.get( line[2] , "NA_AN" ) == "NA_AN":
		document3.write( i )
	else:
		document3.write( dic.get(line[2]) )

document1.close()
document2.close()
document3.close()
