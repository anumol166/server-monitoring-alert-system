## 🚀 Server Monitoring & Alert System (DevOps Project)

## 📌 Overview
This project is a shell script-based monitoring system that tracks server health and generates alerts when thresholds are exceeded.

## ⚙️ Features
- Monitor CPU usage
- Monitor Disk usage
- Check service status (SSH)
- Generate alerts when limits are crossed
- Automated execution using cron jobs
- Logs stored for analysis

## 🧰 Technologies Used
- Linux
- Shell Scripting (Bash)
- Cron Jobs

## 🧑‍💻 How It Works
1. Script collects system metrics (CPU, disk, service status)
2. Compares with predefined thresholds
3. Logs output into a file
4. Generates alerts if thresholds exceed
5. Cron job runs script automatically every minute

## ▶️ Setup Instructions
```bash
chmod +x monitor.sh
crontab -e
* * * * * /home/user/monitor.sh

📊 Sample Output
------ System Report ------
CPU Usage: 85%
ALERT: High CPU usage - 85%
Disk Usage: 78%
SSH Status: active
--------------------------

🎯 Use Case

This project simulates a basic monitoring system similar to tools like Nagios or Prometheus.

🚀 Future Improvements
Email alerts
Telegram alerts
Dashboard visualization
