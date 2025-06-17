#!/bin/bash
echo "Creating WizTeK Automation Challenge Repository..."

# Create all directories
directories=(
    ".github/workflows"
    ".github/ISSUE_TEMPLATE" 
    "docs/architecture"
    "docs/business-case"
    "docs/daily-logs/week-1"
    "docs/daily-logs/week-2"
    "docs/daily-logs/week-3"
    "docs/daily-logs/week-4"
    "infrastructure/terraform/modules"
    "infrastructure/cloudformation"
    "infrastructure/kubernetes"
    "automation-platform/api-connectors/src/connectors"
    "automation-platform/api-connectors/src/utils"
    "automation-platform/api-connectors/tests"
    "automation-platform/api-connectors/schemas"
    "automation-platform/automation-scripts/python/connectors"
    "automation-platform/automation-scripts/python/workflows"
    "automation-platform/automation-scripts/python/utils"
    "automation-platform/automation-scripts/templates"
    "automation-platform/self-service-portal/backend/app"
    "automation-platform/self-service-portal/backend/api"
    "automation-platform/self-service-portal/frontend"
    "automation-platform/self-service-portal/config"
    "automation-platform/monitoring/metrics"
    "automation-platform/monitoring/alerts"
    "automation-platform/monitoring/dashboards"
    "devops/docker"
    "devops/scripts"
    "devops/configs"
    "security/compliance-checks"
    "security/policies"
    "security/governance"
    "examples/automation-workflows"
    "examples/integration-demos"
    "examples/use-cases"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
    echo "Created: $dir"
done

# Create __init__.py files for Python packages
find automation-platform -type d -name "*.py" -prune -o -type d -print | while read dir; do
    if [[ "$dir" == *"/src"* ]] || [[ "$dir" == *"/connectors"* ]] || [[ "$dir" == *"/utils"* ]]; then
        touch "$dir/__init__.py"
        echo "Created: $dir/__init__.py"
    fi
done

echo ""
echo "🎉 Repository structure created successfully!"
echo "📁 Total directories: ${#directories[@]}"
echo "🐍 Python package structure ready"
