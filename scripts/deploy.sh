# удаление последней версии
rm -rf __deployme
mkdir __deployme
# сборка
sh scripts/build.sh
# минификация JS
uglify -s bundle.js -o __deployme/bundle.js
# минификация CSS
cssshrink bundle.css > __deployme/bundle.css
# копирование HTML и изображений
cp index.html __deployme/index.html
cp -r images/ __deployme/images/
# готово
date; echo;
