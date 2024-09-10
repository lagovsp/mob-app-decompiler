echo "Downloadig application $1 from rustore ..."
python3 ./mdast_cli/mdast_scan.py -d --distribution_system rustore --rustore_package_name "$1"
echo "Download succeeded."

src_folder="app-src"
target="$(find ./downloaded_apps | grep .apk)"

echo "Sources will be stored in: $(pwd)/${src_folder}"
echo "Decompiling application in file ${target} ..."
bash ./jadx/bin/jadx "${target}" -d ./${src_folder}
echo "Decompilation succeeded."
