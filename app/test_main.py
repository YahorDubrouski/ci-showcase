import pytest
from app import create_app

@pytest.fixture
def client():
    app = create_app()
    app.testing = True
    return app.test_client()

def test_ping(client):
    response = client.get("/ping")
    assert response.status_code == 201
    assert response.json == {"message": "pong"}
