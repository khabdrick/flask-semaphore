from main import app
from flask import json

def test_main():
    response = app.test_client().get('/') # Creates a test client for this application.

    assert response.status_code == 200 # assert the stutus code of the page('/') is 200
    json_object = json.loads(response.data)
    assert (json_object[0]["country"]) == "Nigeria"  # assert the country returns Nigeria