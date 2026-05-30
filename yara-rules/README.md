# YARA Malware Detection Rules

This directory contains YARA rules for detecting malware and suspicious files.

## YARA Rules Structure

```
yara-rules/
├── malware/
│   ├── trojan/
│   ├── ransomware/
│   ├── worm/
│   └── backdoor/
├── suspicious/
│   ├── obfuscation/
│   ├── anti_analysis/
│   └── command_control/
└── behavioral/
    ├── file_access/
    └── network_activity/
```

## Rule Categories

### Malware Rules
- **Trojan**: Trojan horse detection
- **Ransomware**: Ransomware family signatures
- **Worm**: Self-replicating malware
- **Backdoor**: Remote access detection

### Suspicious Rules
- **Obfuscation**: Packed or encrypted code
- **Anti-Analysis**: Anti-debugging/sandbox features
- **C2**: Command and control detection

## Creating YARA Rules

### Basic Template
```yara
rule Malware_Family {
    meta:
        author = "Your Name"
        date = "YYYY-MM-DD"
        description = "Detects XYZ malware"
        severity = "high"
    strings:
        $str1 = "malware_string" ascii
        $hex1 = { 4D 5A 90 00 }
        $regex1 = /pattern.*regex/
    condition:
        all of them
}
```

## Testing

```bash
# Scan file with YARA rules
yara -r yara-rules/ /path/to/file

# Scan with specific rule file
yara yara-rules/malware/trojan/emotet.yar /path/to/file
```

## Resources

- [YARA Documentation](https://yara.readthedocs.io/)
- [YARA Rules Repository](https://github.com/Yara-Rules/rules)
- [VirusShare YARA](https://virusshare.com/)
