# преобразование js
babel --presets react,es2015 js/source -d js/build
# создание пакета js
browserify js/build/app.js -o bundle.js
# создание пакета css
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
# готово
date; echo;
