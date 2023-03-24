

output=output.txt
error=error.txt
iter_count=1

while true; do
	echo "Run no $iter_count"
        ./script.sh > $output 2> $error
        exit=$?
	
	cat $output
	cat $error >&2

        if [[ $exit -ne 0 ]]; then
	       	break
      	fi
      
      	(( iter_count++ ))
done

echo "It took $iter_count runs to fail"

