rm -Rf ./{fr,ko,en,es,ar}
tar -xzf ../wiki*.tar.gz
find . -name *.html -exec rm {} ';'
mkdir fr
mv * fr
for i in Makefile index.md cleanup.sh ar en es ko
  do
    echo $i
    mv fr/$i .
  done
for i in en fr es ko ar
  do
    echo $i
    mv $i/home.md $i/index.md
    find . -name *.md -exec sed -i "s/(\\/$i\\//(\\//" {} ';'
    cd $i
    for j in `find * -maxdepth 1 -type d `
      do
        echo $i/$j
        # echo find $j -name *.md -exec sed -i "s/(\\/$j\\//(.\\//g" {} ';'
        for k in `find $j -maxdepth 1 -name "*.md"`
          do
            echo $k
            sed -i 's|(/'$j'/|(./|g' $k
            sed -Ei 's|\(\./([-_a-z0-9/]+)\)|(./\1.md)|g' $k
          done
      done
      cd ..
  done
find . -name *.md -exec sed -i 's/\/home.md/\/index.md/g' {} ';'
#find . -name *.md -exec awk '
#          /<div class="dock[^"]*">/ { inblock=1; next }
#          /<\/div>/ {
#              if (inblock) {
#                  inblock=0
#                  next
#              }
#          }
#          !inblock
#          ' {} > tmp && mv tmp {} ';'
find . -name *.md -exec sed -i 's|<div|<span|' {} ';'
find . -name *.md -exec sed -i 's|</div|</span|' {} ';'
