# SOC L1 Detection Lab 🔐

Professional Security Operations Center (SOC) Level 1 Detection Laboratory with Grafana Dashboard, Sigma Rules, and YARA Malware Detection.

## 🎯 Overview

This repository provides a complete detection engineering platform for SOC L1 analysts to practice threat detection, incident response, and log analysis.

### Features
- ✅ Real-time Threat Detection (Grafana Dashboard)
- ✅ Sigma Rules for SIEM Integration
- ✅ YARA Rules for Malware Detection
- ✅ Sample Logs for Testing
- ✅ Log Parsing Scripts (Python)
- ✅ Incident Response Automation
- ✅ Docker Compose for Easy Deployment

## 📊 Dashboard Components

### Grafana Dashboards
1. **Threat Overview** - Real-time threat monitoring
2. **Log Analysis** - Log volume and patterns
3. **Incident Response** - Alert tracking and response
4. **MITRE ATT&CK Mapping** - Threat framework mapping
5. **False Positive Analysis** - Detection accuracy

## 🚀 Quick Start

### Prerequisites
- Docker & Docker Compose
- 4GB RAM minimum
- Port 3000 (Grafana), 9200 (Elasticsearch), 5000 (API)

### Installation

```bash
# Clone repository
git clone https://github.com/aliyev-s/soc-l1-detection-lab.git
cd soc-l1-detection-lab

# Start services
docker-compose up -d

# Access Grafana
# URL: http://localhost:3000
# Default: admin / admin
```

## 📁 Directory Structure

```
soc-l1-detection-lab/
├── README.md
├── docker-compose.yml
├── dashboard/
│   └── grafana/
│       ├── dashboards/
│       ├── provisioning/
│       └── plugins/
├── sigma-rules/
│   ├── windows/
│   ├── linux/
│   └── application/
├── yara-rules/
│   ├── malware/
│   └── suspicious/
├── logs-samples/
├── scripts/
│   ├── log-parser.py
│   ├── sigma-validator.py
│   └── alert-generator.sh
├── detection-queries/
│   ├── splunk/
│   ├── elk/
│   └── qradar/
└── documentation/
    ├── getting-started.md
    └── sigma-tutorial.md
```

## 🛠️ Technologies

- **Grafana** - Visualization & Monitoring
- **Elasticsearch** - Log Storage & Indexing
- **Kibana** - Log Exploration
- **Prometheus** - Metrics Collection
- **Python** - Log Processing & Analysis
- **Sigma** - Detection Rules
- **YARA** - Malware Detection

## 📚 Documentation

- [Getting Started Guide](documentation/getting-started.md)
- [Sigma Rules Tutorial](documentation/sigma-tutorial.md)
- [Incident Response Playbook](documentation/incident-response-guide.md)
- [Log Analysis Guide](documentation/log-analysis-guide.md)

## 🎓 SOC L1 Learning Path

1. **Week 1-2**: Log Analysis Fundamentals
2. **Week 3-4**: Sigma Rules & Detection Logic
3. **Week 5-6**: Incident Response Process
4. **Week 7-8**: Dashboard Interpretation & Alerting
5. **Week 9-10**: Real-world Scenarios & Case Studies

## 🔍 Sample Use Cases

### Brute Force Attack Detection
- Multiple failed authentication attempts
- Sigma Rule: `windows/process_creation/proc_creation_win_rdp_brute_force.yml`

### Malware Detection
- Suspicious process execution
- YARA Rule: `yara-rules/malware/suspicious_process.yar`

### Lateral Movement Detection
- Unusual network connections
- Sigma Rule: `windows/network_connection/suspicious_outbound.yml`

## 📊 Dashboard Access

Once running:
```
Grafana: http://localhost:3000
Kibana: http://localhost:5601
Elasticsearch API: http://localhost:9200
```

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📝 License

MIT License - See [LICENSE](LICENSE) file

## 🔗 Resources

- [Sigma Rules Official](https://github.com/SigmaHQ/sigma)
- [MITRE ATT&CK Framework](https://attack.mitre.org)
- [Grafana Documentation](https://grafana.com/docs)
- [Elasticsearch Guide](https://www.elastic.co/guide/)

## 👤 Author

aliyev-s - SOC Detection Engineer

---

**Last Updated**: 2026-05-30
