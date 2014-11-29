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
- if duplicate device_id sent it will return the first created and will not throw any error

## Photo ##
* url: `/api/v1/photos`
* params: `user_id*` `page`
* response
```javascript```
[
    {
        "id" : 1,
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
        "id" : 2,
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
    }
]
```

## Vote ##

* URL: `api/v1/votes`
* method: POST
* params : `user_id*`,`photo_id*`, `liked*` can be "true" or "false"
* response

```javascript```
{
    "id": 5,
    "user_id": 1,
    "photo_id": 6,
    "liked": true,
    "created_at": "2014-11-29T18:26:47.625+08:00",
    "updated_at": "2014-11-29T18:26:47.625+08:00"
}


```

## Query for Itineraries ##
* URL: `api/v1/itineraries`
* method: GET
* params : `user_id*`,`duration*`
* response

```javascript```
    [
    {
        "day1": {
            "morning": {
                "venues": [
                    {
                        "id": 58,
                        "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                        "tags": [
                            "Ramen/NoodleHouse"
                        ],
                        "name": "Ippudo(一風堂)",
                        "rating": 8.9,
                        "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                        "avg_time_spent": 3,
                        "best_time_for_visit": "morning",
                        "latitude": "1.302282723104893902288381468679290265",
                        "longigtude": "103.836851119995117188",
                        "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                        "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                        "source": "foursquare",
                        "source_id": "4c160cf377cea5934602d360",
                        "photo": {
                            "id": 2,
                            "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                            "width": 720,
                            "height": 960
                        }
                    }
                ]
            },
            "afternoon": {
                "venues": [
                    {
                        "id": 58,
                        "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                        "tags": [
                            "Ramen/NoodleHouse"
                        ],
                        "name": "Ippudo(一風堂)",
                        "rating": 8.9,
                        "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                        "avg_time_spent": 3,
                        "best_time_for_visit": "morning",
                        "latitude": "1.302282723104893902288381468679290265",
                        "longigtude": "103.836851119995117188",
                        "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                        "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                        "source": "foursquare",
                        "source_id": "4c160cf377cea5934602d360",
                        "photo": {
                            "id": 2,
                            "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                            "width": 720,
                            "height": 960
                        }
                    }
                ]
            },
            "evening": {
                "venues": [
                    {
                        "id": 58,
                        "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                        "tags": [
                            "Ramen/NoodleHouse"
                        ],
                        "name": "Ippudo(一風堂)",
                        "rating": 8.9,
                        "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                        "avg_time_spent": 3,
                        "best_time_for_visit": "morning",
                        "latitude": "1.302282723104893902288381468679290265",
                        "longigtude": "103.836851119995117188",
                        "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                        "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                        "source": "foursquare",
                        "source_id": "4c160cf377cea5934602d360",
                        "photo": {
                            "id": 2,
                            "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                            "width": 720,
                            "height": 960
                        }
                    }
                ]
            }
        }
    }
]
```

## Get Existed Itineraries ##

* URL: `api/v1/itineraries`
* method: GET
* params : `user_id*`
* response

```javascript```
[
    [
        {
            "day1": {
                "morning": {
                    "venues": [
                        {
                            "id": 58,
                            "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                            "tags": [
                                "Ramen/NoodleHouse"
                            ],
                            "name": "Ippudo(一風堂)",
                            "rating": 8.9,
                            "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                            "avg_time_spent": 3,
                            "best_time_for_visit": "morning",
                            "latitude": "1.302282723104893902288381468679290265",
                            "longigtude": "103.836851119995117188",
                            "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                            "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                            "source": "foursquare",
                            "source_id": "4c160cf377cea5934602d360",
                            "photo": {
                                "id": 2,
                                "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                                "width": 720,
                                "height": 960
                            }
                        }
                    ]
                },
                "afternoon": {
                    "venues": [
                        {
                            "id": 58,
                            "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                            "tags": [
                                "Ramen/NoodleHouse"
                            ],
                            "name": "Ippudo(一風堂)",
                            "rating": 8.9,
                            "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                            "avg_time_spent": 3,
                            "best_time_for_visit": "morning",
                            "latitude": "1.302282723104893902288381468679290265",
                            "longigtude": "103.836851119995117188",
                            "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                            "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                            "source": "foursquare",
                            "source_id": "4c160cf377cea5934602d360",
                            "photo": {
                                "id": 2,
                                "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                                "width": 720,
                                "height": 960
                            }
                        }
                    ]
                },
                "evening": {
                    "venues": [
                        {
                            "id": 58,
                            "address_blob": "#04-02/03/04MandarinGallery(333AOrchardRd),238867,Singapore",
                            "tags": [
                                "Ramen/NoodleHouse"
                            ],
                            "name": "Ippudo(一風堂)",
                            "rating": 8.9,
                            "tip": "Thecurrytofuisamusttry!Theporkbunsandthenoodlesalsoamustmusttry.Niceambienceandgoodservicefromstaff!",
                            "avg_time_spent": 3,
                            "best_time_for_visit": "morning",
                            "latitude": "1.302282723104893902288381468679290265",
                            "longigtude": "103.836851119995117188",
                            "created_at": "2014-11-29T17: 01: 49.832+08: 00",
                            "updated_at": "2014-11-29T17: 26: 44.339+08: 00",
                            "source": "foursquare",
                            "source_id": "4c160cf377cea5934602d360",
                            "photo": {
                                "id": 2,
                                "url": "https: //irs2.4sqi.net/img/general/720x960/54975491_IsN_24PvR1jMUeNwKf-gJwrO_JtIxmfL0dppy7oox3w.jpg",
                                "width": 720,
                                "height": 960
                            }
                        }
                    ]
                }
            }
        }
    ]
]

```