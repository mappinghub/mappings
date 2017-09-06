for file in `grep -l '\"version\": \"0.1\"' *` 
do
   echo $file
   rm $file
done
