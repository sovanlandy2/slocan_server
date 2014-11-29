# Slocan's Server URL #
* base_url: `http://slocan.herokuapp.com/`

## User ##

### Create User ###
* url: `api/v1/users`
* params: `device_id`, `age`, `country_origin`
* response

```javascript```
{
    "id": 1,
    "age": 20,
    "country_origin": "Germany",
    "device_id": "adbfbasd"
}
```

Duplication

```javascript```
{
    "status_code": 4003,
    "error": {
        "message": "Entity Duplication detected"
    },
    "accessing_time": 1417254333
}
```

## Photo ##
* url: `/api/v1/photos`
* params: `user_id*` `page`
* response
```javascript```
[
    {
        "url": "https://irs3.4sqi.net/img/general/612x612/43801216_hbHvPu_A5QHVrsztbBLV4_MV-5ivVNfXiQRJuLjVVX8.jpg",
        "width": 612,
        "height": 612
    },
    {
        "url": "https://irs1.4sqi.net/img/general/960x540/3954011_DAH8SaB87jh0xHtTADY5ScTqpZr8H7KeyJ2HyYHFypw.jpg",
        "width": 960,
        "height": 540
    },
    {
        "url": "https://irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
        "width": 720,
        "height": 960
    },
    {
        "url": "https://irs3.4sqi.net/img/general/720x441/bMPjwz4p81LtEYiQ-r0_VEBPJ2Tf40QI2zJns8brsUY.jpg",
        "width": 720,
        "height": 441
    },
    {
        "url": "https://irs1.4sqi.net/img/general/2592x1728/55615029_R4f4SVsokakZ80yyPDqh-59HsMJ_wKQI5FdVcWkpfXQ.jpg",
        "width": 2592,
        "height": 1728
    }
]
```