#!/bin/bash
echo "begin"

i=0
for file in 'graph/citeseer.edgelist' 'graph/cora.edgelist' 'link_prediction/blogcatalog/train_set' 'link_prediction/flickr/train_set'
do
	# reg=$(echo "scale=4;${alpha} / ${bizhi}`"|bc)
	echo "in file ${i} "
	nohup python src/main.py --input ${file} --output 'embed/i.embedding' >>o.f 2>&1 &
	# wait
	i=`expr $i + 1`
	
done
wait
echo "finsh"
