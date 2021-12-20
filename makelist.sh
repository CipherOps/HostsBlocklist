rm -rf all-lists
rm -rf merged.txt
mkdir -p all-lists
wget -nd -P all-lists -i sources.txt
cat all-lists/* | grep -Ev '^([0-9]{1,3}(\.[0-9]{1,3}){3}|[^a-zA-Z0-9].*)$' | sort -u > merged.txt
cat merged.txt | awk '{print $NF}' | sort -u > hosts.txt
rm -rf merged.txt
rm -rf all-lists
