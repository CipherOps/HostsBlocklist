rm -rf all-lists
rm -rf merged.txt
mkdir -p all-lists
wget -nd -P all-lists -i sources.txt
cat all-lists/* | grep -Ev '^([0-9]{1,3}(\.[0-9]{1,3}){3}|[^a-zA-Z0-9].*)$' | sort | uniq > merged.txt
cat merged.txt | awk '{print $NF}' > hosts.txt
rm merged.txt
