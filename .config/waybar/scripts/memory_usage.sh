#!/bin/bash
read total used free <<<$(free -m | awk 'NR==2{print $2, $3, $4}')
echo "{\"text\": \"  RAM: $used / $total MB\"}"

