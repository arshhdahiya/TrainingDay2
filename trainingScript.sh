# !/usr/bin/bash
# Task 1
mkdir TrainingDay2

cd TrainingDay2

# Task2
file_id="1WSv5nr6DG864_pNrGjoejclA"
destination_folder="SampleTesting.docx"

gdown "https://drive.google.com/uc?id=${file_id}" -O "${destination_folder}"

echo "File downloaded successfully to: $destination_folder"

# Task 3
hostname=$(whoami)
cpuinfo=$(lscpu)
num_cores=$(echo "$cpuinfo" | grep -E '^CPU\(s\):' | awk '{print $2}')
architecture=$(echo "$cpuinfo" | grep 'Architecture' | awk '{print $2}')
total_ram=$(grep -m1 'MemTotal' /proc/meminfo | awk '{print $2}')
available_ram=$(grep -m1 'MemAvailable' /proc/meminfo | awk '{print $2}')
storageinfo=$(df -h)

echo -e "Hostname: $hostname\nNo. of Cores: $num_cores\nArchitecture: $architecture\nTotal RAM:$total_ram kB\nAvailable RAM: $available_ram kB\n$storageinfo" > systeminfo.txt

