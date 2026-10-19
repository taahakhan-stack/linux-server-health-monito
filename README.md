# Linux Server Health Monitor 

This is one of my first Linux and DevOps projects. I built a Bash script that checks the basic health of a Linux system and gives me a quick overview of how it's doing.

I wanted to learn how system monitoring works in practice instead of just reading about it, so I made this project using commands and tools available on Ubuntu.

## What does it do?

- Checks memory usage to see how much RAM is being used.
- Checks disk usage to make sure storage isn't getting too full.
- Shows how long the system has been running.
- Compares resource usage against set thresholds.
- Displays a status report based on the results.
- Saves the report in a log file called `health_report.log`.
- Can run automatically every five minutes using cron.

## Tools I used

- **Ubuntu Linux** — my working environment.
- **Bash** — to write the monitoring script.
- **Linux commands** — to collect system information.
- **Cron** — to schedule automatic checks.
- **Git and GitHub** — to track changes and share the project.

## Project files

```text
linux-server-health-monitor/
├── health_check.sh
├── health_report.log
├── .gitignore
└── README.md
```

The script is `health_check.sh`. The log file stores the generated reports, while `.gitignore` keeps the log out of Git tracking.

## How to run it

First, clone the repository and enter the project directory:

```bash
git clone https://github.com/taahakhan-stack/linux-server-health-monito.git
cd linux-server-health-monito
```

Make the script executable:

```bash
chmod +x health_check.sh
```

Run the script:

```bash
./health_check.sh
```

You can check the generated report with:

```bash
cat health_report.log
```

## Running it automatically

I also used cron to schedule the health check every five minutes. This helped me understand how Linux can automate repetitive tasks without needing me to run the script manually each time.

To edit your cron jobs, use:

```bash
crontab -e
```

If you want to configure the schedule yourself, add a line like this, using the actual path to your script:

```cron
*/5 * * * * /home/lenovo/devops-projects/linux-server-health-monitor/health_check.sh
```

If you've already configured this schedule, you don't need to add it again.

## What I learned

Building this project helped me practise Bash scripting, Linux commands, file permissions, logging, and cron scheduling. It also gave me a better understanding of how basic system monitoring works.

I'm continuing to improve my Linux and DevOps skills by building practical projects and documenting what I learn.

## Author

**Taaha Mustafa Khan**

GitHub: https://github.com/taahakhan-stack
