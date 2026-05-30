# Sample Logs

This directory contains sample logs for testing detection rules and dashboards.

## Log Types

### Windows Event Logs
- Security logs (Authentication, Process Creation)
- System logs (Service changes, driver loading)
- Application logs (Errors, warnings)

### Linux Logs
- Auth logs (SSH attempts, sudo commands)
- Syslog (System events)
- Audit logs (Detailed system activity)

### Web Application Logs
- Apache/Nginx access logs
- IIS logs
- Web application errors

## Using Sample Logs

1. **For Testing Sigma Rules**
   ```bash
   sigma_convert_tool -t splunk logs-samples/windows-events/auth_logs.json
   ```

2. **For Elasticsearch Ingestion**
   ```bash
   python scripts/log-parser.py logs-samples/
   ```

3. **For Dashboard Testing**
   - Import logs to Elasticsearch
   - Verify Grafana dashboards display data

## Log Format

### Windows Event
```json
{
  "EventID": 4625,
  "Computer": "DESKTOP-ABC123",
  "TimeCreated": "2026-05-30T10:30:00Z",
  "LogonType": 3,
  "Status": "0xc000006e",
  "FailureReason": "Unknown user name or bad password"
}
```

### Linux Auth
```
May 30 10:30:45 ubuntu sshd[1234]: Failed password for invalid user admin from 192.168.1.100 port 54321 ssh2
```

## Adding New Samples

1. Create subdirectory for log type
2. Add sample log file
3. Document format in this README
4. Update scripts/log-parser.py if needed
