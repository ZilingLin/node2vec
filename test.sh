#!/bin/bash
echo "begin"

i=4
for datasets in 'blogcatalog'
do
	for reg in 15 25 30
	do
		for alpha in 1
		do
			# reg=$(echo "scale=4;${alpha} / ${bizhi}`"|bc)
			echo "in file ${i}  datasets: ${datasets} alpha: ${alpha} reg: ${reg}"
			nohup python main.py --datasets ${datasets} --alpha ${alpha} --reg ${reg} --train_type link_prediction >blogcatalog/${i}.f 2>&1 &
			# wait
			i=`expr $i + 1`
		done
	# wait
	done
done
wait
echo "finsh"
