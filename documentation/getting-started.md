# Getting Started with SOC L1 Detection Lab

## Prerequisites

- Docker & Docker Compose installed
- 4GB RAM minimum
- 20GB free disk space
- Basic command line knowledge

## Installation Steps

### 1. Clone Repository
```bash
git clone https://github.com/aliyev-s/soc-l1-detection-lab.git
cd soc-l1-detection-lab
```

### 2. Start Services
```bash
docker-compose up -d
```

This starts:
- Elasticsearch (port 9200)
- Kibana (port 5601)
- Prometheus (port 9090)
- Grafana (port 3000)
- API Service (port 5000)

### 3. Verify Services
```bash
# Check if containers are running
docker-compose ps

# Check logs
docker-compose logs grafana
```

### 4. Access Dashboards

**Grafana:**
- URL: http://localhost:3000
- Username: admin
- Password: admin

**Kibana:**
- URL: http://localhost:5601

**Prometheus:**
- URL: http://localhost:9090

## First Steps

### 1. Create Elasticsearch Index
```bash
curl -X PUT http://localhost:9200/logs-2026.05.30
```

### 2. Import Sample Logs
```bash
python scripts/log-parser.py logs-samples/ --elasticsearch http://localhost:9200
```

### 3. Create Grafana Dashboard
1. Go to Grafana (http://localhost:3000)
2. Dashboards → New → Import
3. Upload dashboard JSON file
4. Select Elasticsearch data source
5. Click Import

### 4. Test Detection Rules
```bash
python scripts/sigma-validator.py sigma-rules/windows/process_creation/
```

## Troubleshooting

### Elasticsearch Connection Error
```bash
# Check if Elasticsearch is running
curl http://localhost:9200

# View logs
docker-compose logs elasticsearch
```

### Grafana Not Loading
```bash
# Restart Grafana
docker-compose restart grafana

# Check logs
docker-compose logs grafana
```

### No Data in Dashboards
1. Verify Elasticsearch has data: `curl http://localhost:9200/_cat/indices`
2. Check data source in Grafana
3. Import sample logs: `python scripts/log-parser.py logs-samples/`

## Next Steps

1. **Learn Sigma Rules**: Read `documentation/sigma-tutorial.md`
2. **Explore Dashboards**: Open Grafana and explore visualizations
3. **Analyze Logs**: Use Kibana to search and filter logs
4. **Create Alerts**: Set up Grafana alerts for critical events
5. **Practice Incident Response**: Follow playbooks in `documentation/incident-response-guide.md`

## Learning Path

**Week 1: Fundamentals**
- Understand log types and formats
- Learn basic Elasticsearch queries
- Explore Kibana visualizations

**Week 2-3: Detection Rules**
- Study Sigma rule syntax
- Analyze existing rules
- Create custom rules

**Week 4-5: Incident Response**
- Follow incident response playbooks
- Practice with case studies
- Create custom dashboards

**Week 6+: Advanced Topics**
- MITRE ATT&CK mapping
- Threat hunting techniques
- Dashboard customization

## Resources

- [Elasticsearch Documentation](https://www.elastic.co/guide/)
- [Grafana Documentation](https://grafana.com/docs/)
- [Sigma Rules](https://github.com/SigmaHQ/sigma)
- [MITRE ATT&CK](https://attack.mitre.org/)

## Support

For issues or questions:
1. Check existing GitHub issues
2. Create a new issue with detailed description
3. Check documentation first

Happy learning! 🚀
