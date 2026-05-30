# Sigma Detection Rules

This directory contains Sigma rules for threat detection across multiple platforms.

## Sigma Rules Structure

```
sigma-rules/
├── windows/
│   ├── process_creation/
│   ├── network_connection/
│   ├── authentication/
│   └── registry_modification/
├── linux/
│   ├── process_execution/
│   ├── network_activity/
│   └── system_audit/
└── application/
    ├── web_application/
    └── database/
```

## Rule Categories

### Windows Rules
- **Process Creation**: Suspicious process execution
- **Network Connection**: Outbound connections
- **Authentication**: Brute force, lateral movement
- **Registry**: Configuration changes

### Linux Rules
- **Process Execution**: Command execution
- **Network Activity**: Network connections
- **System Audit**: Privilege escalation

## Creating Sigma Rules

### Template
```yaml
title: [Rule Title]
id: [UUID]
status: [experimental|test|stable]
description: [Detailed description]
author: [Your name]
date: [YYYY-MM-DD]
logsource:
  product: [windows|linux|application]
  service: [sysmon|auditd|apache]
  category: [process_creation|network_connection]
detection:
  selection:
    [Field]: [Value]
  condition: selection
fields:
  - [Field1]
  - [Field2]
references:
  - [URL]
level: [low|medium|high|critical]
```

## Validation

```bash
# Validate Sigma rule syntax
python scripts/sigma-validator.py sigma-rules/windows/process_creation/rule.yml
```

## Testing

1. Use sample logs from `logs-samples/`
2. Convert rules to SIEM format
3. Test against logs
4. Verify detection accuracy

## Rule Status

- **experimental**: New, under testing
- **test**: Tested in lab environment
- **stable**: Production-ready

## Resources

- [Sigma GitHub](https://github.com/SigmaHQ/sigma)
- [Sigma Specification](https://github.com/SigmaHQ/sigma-specification)
- [Sigma Rule Repository](https://github.com/SigmaHQ/sigma-rules)
