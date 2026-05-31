# 🔴 SOC L1 Detection Lab - Alert Rules

## Critical Alerts

### Alert 1: High Severity Events
**Condition:** More than 10 critical severity events in 5 minutes
```
Severity = "Critical" AND count > 10 in 5m
```
**Action:** Slack notification + Email

### Alert 2: Brute Force Attack Detection
**Condition:** 5+ failed authentication from same IP in 10 minutes
```
event_type = "Authentication" AND status = "Failure" AND count > 5 in 10m by source_ip
```
**Action:** Immediate Slack alert + Block IP

### Alert 3: Privilege Escalation Attempt
**Condition:** Any privilege escalation event detected
```
message contains "Privilege Escalation"
```
**Action:** Page on-call analyst

---

## Medium Alerts

### Alert 4: Unusual Network Traffic
**Condition:** Network traffic spike > 50MB/s
```
bytes_sent > 50000000 in 1m
```
**Action:** Slack warning

### Alert 5: Multiple Failed Logins
**Condition:** 3+ failed login attempts from same user
```
event_type = "Authentication" AND status = "Failure" AND count > 3 in 5m by user
```
**Action:** Email alert

---

## Setup Instructions

1. Go to **Grafana** → **Alerting** → **Alert rules**
2. Create new alert rule
3. Set condition based on above rules
4. Configure notification channel (Slack/Email)

---

## Notification Channels

- **Slack:** `#soc-alerts`
- **Email:** `soc-team@company.com`
- **PagerDuty:** For critical incidents
