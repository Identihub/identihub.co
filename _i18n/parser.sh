for file in *.yml;
do tail -n +2 "$file" > "${file/.yml/.yml.tmp}";
done

for i in *.yml.tmp;
do sed -i 's/  //' $i
done

for file in *.yml
do
  rm "$file"
done

for file in *.yml.tmp
do
  mv "$file" "${file/.yml.tmp/.yml}"
done
  
