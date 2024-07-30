# Link to the API Gateway


## Event API Lambda
https://yzf3vzp6xa.execute-api.us-west-1.amazonaws.com/Dev

| Method | Path | Description |
| --- | --- | --- |
| GET | /events | Get all events |
| GET | /events/{id} | Get event by id |
| POST | /events | Create a new event |
| PUT | /events/{id} | Update an event |
| DELETE | /events/{id} | Delete an event |

### Get all events
Object model:
```json
{
  "data": [
    {
      "id": 5,
      "name": "Updated Event",
      "description": "Updated Description",
      "start_date": "2024-06-06T00:00:00",
      "end_date": "2024-06-07T00:00:00",
      "category": "Exposición",
      "id_museum": null,
      "pictures": null
    }
  ]
}
```

### Get event by id
Object model:
```json
{
  "data": {
    "id": 5,
    "name": "Updated Event",
    "description": "Updated Description",
    "start_date": "2024-06-06T00:00:00",
    "end_date": "2024-06-07T00:00:00",
    "category": "Exposición",
    "id_museum": null,
    "pictures": null
  }
}
```



