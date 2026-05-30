# Grafana Dashboards

This directory contains professional Grafana dashboards for SOC L1 monitoring and analysis.

## Available Dashboards

### 1. Threat Overview Dashboard
- Real-time threat monitoring
- Alert frequency and severity
- Top threats by type
- Geographic distribution

### 2. Log Analysis Dashboard
- Log volume trends
- Top sources and destinations
- Protocol distribution
- Error rate analysis

### 3. Incident Response Dashboard
- Active incidents
- Response timeline
- MTTR (Mean Time to Resolution)
- Incident severity distribution

### 4. MITRE ATT&CK Mapping
- Detected attack techniques
- Tactic distribution
- Attack patterns
- Framework coverage

### 5. False Positive Analysis
- Detection accuracy
- False positive rate
- Rule effectiveness
- Tuning recommendations

## Importing Dashboards

1. Open Grafana: http://localhost:3000
2. Go to Dashboards → New → Import
3. Upload JSON file from `dashboards/` folder
4. Select data source (Elasticsearch or Prometheus)
5. Click Import

## Data Sources

- **Elasticsearch**: For log data
- **Prometheus**: For metrics
- **Custom API**: For real-time alerts

## Customization

Edit JSON files directly or use Grafana UI to customize panels.
