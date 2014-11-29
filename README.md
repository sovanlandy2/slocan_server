# Slocan's Server URL #
* base_url: `http://slocan.herokuapp.com/`

## User ##

### Create User ###
* url: `api/v1/users`
* params: `device_id*`, `age`, `country_origin`
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
        "height": 612,
        "venue": {
            "id": 56,
            "address_blob": "#63-01 One Raffles Place (1 Raffles Pl),048616,Singapore",
            "tags": [
                "Cocktail Bar",
                "Cocktail Bar",
                "Cocktail Bar"
            ],
            "name": "1 Altitude",
            "rating": 8.9,
            "tip": "1-Altitude is three concept bars and restaurants combined: 282 and City Golf, Stellar and 1-Altitude Gallery & Bar (rooftop); with all of them enjoying a stunning 360-degree view of the city.",
            "avg_time_spent": null,
            "best_time_for_visit": null,
            "latitude": "1.284765398691556814725345248007215559",
            "longigtude": "103.851015663952068734943168237805366516",
            "created_at": "2014-11-29T17:01:49.744+08:00",
            "updated_at": "2014-11-29T17:26:44.316+08:00",
            "source": "foursquare",
            "source_id": "4c419bceff711b8d2c281205"
        }
    },
    {
        "url": "https://irs1.4sqi.net/img/general/960x540/3954011_DAH8SaB87jh0xHtTADY5ScTqpZr8H7KeyJ2HyYHFypw.jpg",
        "width": 960,
        "height": 540,
        "venue": {
            "id": 57,
            "address_blob": "185/187/189/191 Jln Besar,208879,Singapore",
            "tags": [
                "Dim Sum Restaurant",
                "Dim Sum Restaurant",
                "Dim Sum Restaurant"
            ],
            "name": "Swee Choon Tim Sum Restaurant 瑞春點心拉麵小籠包",
            "rating": 8.5,
            "tip": "Hong you chao shou is yummy!",
            "avg_time_spent": null,
            "best_time_for_visit": null,
            "latitude": "1.307963806082410140874117132625542581",
            "longigtude": "103.856881318372501254998496733605861664",
            "created_at": "2014-11-29T17:01:49.786+08:00",
            "updated_at": "2014-11-29T17:26:44.329+08:00",
            "source": "foursquare",
            "source_id": "4bb610c81344b71318e99c04"
        }
    },
    {
        "url": "https://irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
        "width": 720,
        "height": 960,
        "venue": {
            "id": 58,
            "address_blob": "#04-02/03/04 Mandarin Gallery (333A Orchard Rd),238867,Singapore",
            "tags": [
                "Ramen / Noodle House",
                "Ramen / Noodle House",
                "Ramen / Noodle House"
            ],
            "name": "Ippudo (一風堂)",
            "rating": 8.9,
            "tip": "The curry tofu is a must try! The pork buns and the noodles also a must must try. Nice ambience and good service from staff !",
            "avg_time_spent": null,
            "best_time_for_visit": null,
            "latitude": "1.302282723104893902288381468679290265",
            "longigtude": "103.836851119995117188",
            "created_at": "2014-11-29T17:01:49.832+08:00",
            "updated_at": "2014-11-29T17:26:44.339+08:00",
            "source": "foursquare",
            "source_id": "4c160cf377cea5934602d360"
        }
    },
    {
        "url": "https://irs3.4sqi.net/img/general/720x441/bMPjwz4p81LtEYiQ-r0_VEBPJ2Tf40QI2zJns8brsUY.jpg",
        "width": 720,
        "height": 441,
        "venue": {
            "id": 59,
            "address_blob": "200 Victoria St.,188021,Singapore",
            "tags": [
                "Mall",
                "Mall",
                "Mall"
            ],
            "name": "Bugis Junction",
            "rating": 8.3,
            "tip": "The water fountain here never fails to put on a good show for the kids and young adults",
            "avg_time_spent": null,
            "best_time_for_visit": null,
            "latitude": "1.299129258067496239803517710242886096",
            "longigtude": "103.855390548706054688",
            "created_at": "2014-11-29T17:01:49.880+08:00",
            "updated_at": "2014-11-29T17:26:44.350+08:00",
            "source": "foursquare",
            "source_id": "4bb9c1a6935e9521d3512790"
        }
    },
    {
        "url": "https://irs1.4sqi.net/img/general/2592x1728/55615029_R4f4SVsokakZ80yyPDqh-59HsMJ_wKQI5FdVcWkpfXQ.jpg",
        "width": 2592,
        "height": 1728,
        "venue": {
            "id": 60,
            "address_blob": "#01-19/20 Robertson Walk (11 Unity St),237995,Singapore",
            "tags": [
                "Wine Bar",
                "Wine Bar",
                "Wine Bar"
            ],
            "name": "Wine Connection Tapas Bar & Bistro",
            "rating": 8.9,
            "tip": "Order their (soft) cheese platter. Camembert cheese preferred. Consume and combine with grape, almond and raisin. Take a sip of the wine. The after taste is excellent!",
            "avg_time_spent": null,
            "best_time_for_visit": null,
            "latitude": "1.292157297599210163951966023887507617",
            "longigtude": "103.841507434844970703",
            "created_at": "2014-11-29T17:01:49.932+08:00",
            "updated_at": "2014-11-29T17:26:44.364+08:00",
            "source": "foursquare",
            "source_id": "4b0e51a0f964a520c35623e3"
        }
    }
]
```