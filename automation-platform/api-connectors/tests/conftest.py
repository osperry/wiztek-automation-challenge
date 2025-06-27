"""
Pytest configuration and fixtures
"""
import sys
from pathlib import Path

import pytest

# Add src to Python path for testing
src_path = Path(__file__).parent.parent / "src"
if str(src_path) not in sys.path:
    sys.path.insert(0, str(src_path))


@pytest.fixture
def sample_config():
    """Sample configuration for testing"""
    return {
        "platform_name": "WizTeK Automation Platform",
        "version": "1.0.0",
        "environment": "test",
    }


@pytest.fixture
def mock_connector_config():
    """Mock connector configuration"""
    return {
        "id": "test-connector",
        "name": "Test Connector",
        "version": "1.0.0",
        "category": "test",
    }
