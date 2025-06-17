# WizTeK Automation Challenge

Enterprise automation platform demonstration showcasing modern DevOps, cloud architecture, and automation capabilities.

## 🎯 Challenge Overview

27-day structured implementation of an enterprise automation platform, demonstrating:
- **Week 1**: Automation Foundations (CI/CD, Infrastructure, APIs, Monitoring)
- **Week 2**: Technical Implementation (Python scripts, APIs, AWS deployment)
- **Week 3**: Platform Architecture (Self-service portal, security, scalability)
- **Week 4**: Leadership & Business Impact (ROI measurement, team leadership)

## 🚀 Quick Start (macOS)

```bash
# Prerequisites
brew install python@3.11 docker terraform

# Setup
git clone https://github.com/operry/wiztek-automation-challenge.git
cd wiztek-automation-challenge
python3.11 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Run development server
uvicorn automation_platform.self_service_portal.backend.app.main:app --reload
```

## 📊 Current Progress

- [ ] **Day 1-2**: CI/CD Pipeline Architecture ⚡
- [ ] **Day 3-4**: Infrastructure as Code
- [ ] **Day 5-6**: API Strategy & Design
- [ ] **Day 7**: Monitoring Framework

## 🏗️ Architecture

```
WizTeK Automation Platform
├── API Gateway (FastAPI)
├── Connector Framework (Python)
├── Self-Service Portal (React + Python)
├── Infrastructure (Terraform + AWS)
└── Monitoring (Prometheus + Grafana)
```

## 📈 Business Value

**Target Impact**:
- 3x faster automation development
- 60% reduction in manual processes
- Real-time business impact visibility

---
*Building enterprise automation excellence* 🚀
