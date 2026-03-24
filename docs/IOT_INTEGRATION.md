# IoT Integration

MQTT topic conventions:
- Data from charger: `ev/chargers/{stationId}/data`
- Control to charger: `ev/chargers/{stationId}/control`

Sample payloads:
- Data: `{"energyKwh": 3.5, "powerKw": 22, "charging": true}`
- Start: `{"action":"start","sessionId":"..."}`
- Stop: `{"action":"stop"}`
