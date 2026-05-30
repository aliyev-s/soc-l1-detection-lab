# Contributing to SOC L1 Detection Lab

Thank you for your interest in contributing! This document provides guidelines for contributing to the project.

## Code of Conduct

Be respectful, inclusive, and professional in all interactions.

## How to Contribute

### 1. Reporting Issues
- Check if the issue already exists
- Provide detailed description
- Include steps to reproduce
- Add relevant logs or screenshots

### 2. Adding Sigma Rules

**Format:**
```yaml
title: Suspicious Process Execution
id: <UUID>
status: experimental
description: Detects suspicious process execution patterns
logsource:
  product: windows
  service: sysmon
  category: process_creation
detection:
  selection:
    Image|endswith:
      - '\\cmd.exe'
      - '\\powershell.exe'
  filter:
    CommandLine|contains:
      - 'normal_command'
  condition: selection and not filter
fields:
  - Image
  - CommandLine
  - ParentImage
references:
  - https://example.com
levels:
  - high
```

### 3. Adding YARA Rules

**Format:**
```yara
rule Suspicious_Process {
    meta:
        author = "Your Name"
        date = "2026-05-30"
        description = "Detects suspicious process"
    strings:
        $str1 = "malware_string" ascii
        $str2 = {4D 5A 90 00} // MZ header
    condition:
        $str1 and $str2
}
```

### 4. Pull Request Process

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make changes and test thoroughly
4. Commit with clear messages: `git commit -m "Add Sigma rule for XYZ detection"`
5. Push to your fork
6. Create a Pull Request with detailed description

## Testing

- Validate Sigma rules: `sigma-validator.py`
- Test log parsing: Run on sample logs
- Verify Grafana dashboards load correctly

## Naming Conventions

- **Sigma Rules**: `<category>_<platform>_<detection_type>.yml`
  - Example: `process_creation_win_suspicious_execution.yml`
- **YARA Rules**: `<family>_<type>.yar`
  - Example: `emotet_dropper.yar`
- **Dashboards**: `<purpose>_dashboard.json`
  - Example: `threat_overview_dashboard.json`

## Documentation

- Update README.md if adding major features
- Add comments to complex code
- Include references for detection rules

## Review Process

Pull requests will be reviewed within 7 days. We may request:
- Changes to follow guidelines
- Additional testing
- Documentation updates

## Questions?

Open an issue with the `question` label.

Happy contributing! 🚀
