kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

echo "Building Mydoc Writers website..."
jekyll build --config configs/mydoc/config_writers.yml
# jekyll serve --config configs/mydoc/config_writers.yml
echo "done"

echo "Building Mydoc programmers websote..."
jekyll build --config configs/mydoc/config_programmers.yml
# jekyll serve --config configs/mydoc/config_programmers.yml
echo "done"

echo "All finished building all the web outputs!!!"
echo "Now push the builds to the server with . mydoc_4_publish.sh"

