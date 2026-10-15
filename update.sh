cd /root/arxiv-sanity-lite/
./myenv/bin/python3 arxiv_daemon.py --num 2000 -b 0

if [ $? -eq 0 ]; then
    echo "New papers detected! Running compute.py"
    ./myenv/bin/python3 compute.py
else
    echo "No new papers were added, skipping feature computation"
fi
