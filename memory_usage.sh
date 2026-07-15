
#!/bin/bash

#===========================
# Script Name : memory_usage.sh
# Description : monitor memory usage and alert if usage is exceeded
# Author: Anita
# Date: 15-07-2026
#===========================

memory_usage=$( free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

if [ "$memory_usage" -ge 50 ]

then

echo "Memory usage is high:$memory_usage%"

else

echo "Memory usage is normal:$memory_usage"

fi
