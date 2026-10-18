
#!/usr/bin/env bash

LOG_FILE="/home/lenovo/devops-projects/linux-server-health-monitor/health_report.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') | $1" | tee -a "$LOG_FILE"
}

echo "================================="
echo "     LINUX SERVER HEALTH"
echo "================================="

log "Health check started"

memory_used=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
log "Memory usage: ${memory_used}%"

if [ "$memory_used" -ge 80 ]; then
    log "WARNING: Memory usage is high!"
else
    log "OK: Memory usage is normal."
fi

disk_used=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
log "Disk usage: ${disk_used}%"

if [ "$disk_used" -ge 80 ]; then
    log "WARNING: Disk usage is high!"
else
    log "OK: Disk usage is normal."
fi

log "System uptime: $(uptime -p)"
log "Health check completed"
