if [[ $# -ne 1 ]]; then
	echo "Usage: . ./extract.sh <file>"
	return 1
fi

grep "Prefix lengths" $1 | cut -c27-27 > tmp_distinct.txt
grep "gap" $1 | cut -c24-27 > tmp_gap.txt
grep "Iteration" $1 | sed 's/\.//g' | cut -c11-17 > tmp_iteration.txt
grep "All" $1 | cut -c17-22 > tmp_sections.txt
grep "All" $1 | cut -c28-32 > tmp_average.txt
grep "All" $1 | cut -c37-38 > tmp_min.txt
grep "All" $1 | cut -c43-44 > tmp_max.txt
grep "Section nodes" $1 | cut -c21-27 > tmp_nodes.txt
grep "Rejection rate" $1 | cut -c25-26 > tmp_rate.txt
