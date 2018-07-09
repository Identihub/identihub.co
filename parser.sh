for file in _i18n/*.yml;
do tail -n +2 "$file" > "${file/.yml/.yml.tmp}";
done

for i in _i18n/*.yml.tmp;
do sed -i 's/  //' $i
done

for file in _i18n/*.yml
do
  rm "$file"
done

for file in _i18n/*.yml.tmp
do
  mv "$file" "${file/.yml.tmp/.yml}"
done
