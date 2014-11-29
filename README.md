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
* URL: `api/v1/itineraries/query`
* method: GET
* params : `user_id*`,`duration*`
* response

```javascript```
{
    "id": 4,
    "user_id": 10,
    "duration": 3,
    "data": [
        {
            "whole_day": {
                "venues": [
                    {
                        "id": 3,
                        "address_blob": "32 Sentosa Gateway (Resorts World Sentosa),098141,Singapore",
                        "tags": [
                            "Theme Park"
                        ],
                        "name": "Universal Studios Singapore",
                        "rating": 9.5,
                        "tip": "definitely have to try the mummy's revenge roller coaster ride!!!",
                        "avg_time_spent": 8,
                        "best_time_for_visit": "whole_day",
                        "latitude": "1.256460562411614523270486643014010042",
                        "longigtude": "103.821358680725097656",
                        "created_at": "2014-11-29T17:34:34.331+08:00",
                        "updated_at": "2014-11-30T01:00:27.137+08:00",
                        "source": "foursquare",
                        "source_id": "4b1ee9ebf964a5207e2124e3"
                    }
                ]
            }
        },
        {
            "morning": {
                "venues": [
                    {
                        "id": 1,
                        "address_blob": "18 Marina Gardens Dr.,018953,Singapore",
                        "tags": [
                            "Garden"
                        ],
                        "name": "Gardens By The Bay",
                        "rating": 9.5,
                        "tip": "Don't come here in the afternoon/evening it's really very hot -___-",
                        "avg_time_spent": 3,
                        "best_time_for_visit": "morning",
                        "latitude": "1.282632496081466344506338828068692237",
                        "longigtude": "103.865647315979003906",
                        "created_at": "2014-11-29T17:34:34.271+08:00",
                        "updated_at": "2014-11-30T00:57:42.778+08:00",
                        "source": "foursquare",
                        "source_id": "4b949b12f964a5208e7e34e3"
                    }
                ]
            },
            "afternoon": {
                "venues": [
                    {
                        "id": 2,
                        "address_blob": "#04-20/20B/20C Ngee Ann City (391 Orchard Rd),238872,Singapore",
                        "tags": [
                            "Bookstore"
                        ],
                        "name": "Books Kinokuniya 紀伊國屋書店",
                        "rating": 9.5,
                        "tip": "COMPLETE range of books, comics, mags, maps and such. If you need something they don't have, they'll order it in! Top notch quality and service. Best bookstore in anywhere of South-East Asia",
                        "avg_time_spent": 2,
                        "best_time_for_visit": "afternoon",
                        "latitude": "1.303408200000000016771650734881404787",
                        "longigtude": "103.834232000000000084583007264882326126",
                        "created_at": "2014-11-29T17:34:34.305+08:00",
                        "updated_at": "2014-11-30T01:04:32.995+08:00",
                        "source": "foursquare",
                        "source_id": "4b7a6059f964a520002b2fe3"
                    },
                    {
                        "id": 20,
                        "address_blob": "Universal Studios Singapore (Sci-Fi City Zone),099482,Singapore",
                        "tags": [
                            "Theme Park"
                        ],
                        "name": "Transformers The Ride: The Ultimate 3D Battle",
                        "rating": 9.4,
                        "tip": "The Awesome Ride... Well done Freedom Fighter",
                        "avg_time_spent": 2,
                        "best_time_for_visit": "afternoon",
                        "latitude": "1.254247524154620485603572888066992164",
                        "longigtude": "103.821736475858457993126648943871259689",
                        "created_at": "2014-11-29T17:34:34.617+08:00",
                        "updated_at": "2014-11-30T01:43:56.097+08:00",
                        "source": "foursquare",
                        "source_id": "4dfcb419d4c001cca36d3977"
                    }
                ]
            },
            "evening": {
                "venues": [
                    {
                        "id": 7,
                        "address_blob": "30 Raffles Ave,039803,Singapore",
                        "tags": [
                            "Theme Park Ride / Attraction"
                        ],
                        "name": "The Singapore Flyer",
                        "rating": 9.5,
                        "tip": "The Singapore Flyer is the world's tallest ferrie. This landmark rises 165 meters into the air and has 28 cars attached to its outer edge. Great view is included!",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "evening",
                        "latitude": "1.289357781928425428219497916870750487",
                        "longigtude": "103.863083124160766602",
                        "created_at": "2014-11-29T17:34:34.399+08:00",
                        "updated_at": "2014-11-30T01:05:24.031+08:00",
                        "source": "foursquare",
                        "source_id": "4b058810f964a52054af22e3"
                    },
                    {
                        "id": 6,
                        "address_blob": "Along East Coast Pkwy (East Coast Park Service Rd),455511,Singapore",
                        "tags": [
                            "Beach"
                        ],
                        "name": "East Coast Park",
                        "rating": 9.4,
                        "tip": "Follow Foursquare Cities, check-in to 5 venues on Lion City list and earn Lion City badge.",
                        "avg_time_spent": 2,
                        "best_time_for_visit": "evening",
                        "latitude": "1.305114402633707593182066375447902828",
                        "longigtude": "103.927402496337890625",
                        "created_at": "2014-11-29T17:34:34.384+08:00",
                        "updated_at": "2014-11-30T01:05:38.365+08:00",
                        "source": "foursquare",
                        "source_id": "4bec2a8561aca593cae38500"
                    },
                    {
                        "id": 11,
                        "address_blob": "10 Bayfront Avenue,018956,Singapore",
                        "tags": [
                            "Scenic Lookout"
                        ],
                        "name": "Marina Bay Sands Boardwalk",
                        "rating": 9.4,
                        "tip": "The light show start at 8 pm and 9.30 pm. Come here before the show is a better idea, coz you can get to sit on first line.",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "evening",
                        "latitude": "1.284048347205376972013368686020839959",
                        "longigtude": "103.858491182327270508",
                        "created_at": "2014-11-29T17:34:34.473+08:00",
                        "updated_at": "2014-11-30T01:43:37.315+08:00",
                        "source": "foursquare",
                        "source_id": "4ce55576ca41236ac9b37b4b"
                    }
                ]
            }
        },
        {
            "morning": {
                "venues": [
                    {
                        "id": 10,
                        "address_blob": "80 Mandai Lake Rd.,729826,Singapore",
                        "tags": [
                            "Zoo"
                        ],
                        "name": "Singapore Zoo",
                        "rating": 9.2,
                        "tip": "Check out the fragile forest - many people walk past as it's not obvious from the path - you walk around inside the enclosure with fruit bats, sloths, lemurs, deer, parrots and butterflies.",
                        "avg_time_spent": 3,
                        "best_time_for_visit": "morning",
                        "latitude": "1.404778859988833339400571276200935245",
                        "longigtude": "103.79058837890625",
                        "created_at": "2014-11-29T17:34:34.453+08:00",
                        "updated_at": "2014-11-30T01:44:39.052+08:00",
                        "source": "foursquare",
                        "source_id": "4b05880ef964a520b8ae22e3"
                    }
                ]
            },
            "afternoon": {
                "venues": [
                    {
                        "id": 17,
                        "address_blob": "1 Esplanade Dr.,038981,Singapore",
                        "tags": [
                            "Theater"
                        ],
                        "name": "Esplanade - Theatres On The Bay",
                        "rating": 9.2,
                        "tip": "This integrated arts centre boasts a concert hall, theatre, studios and more, and its distinctive shape has made it a giant cultural landmark in @visitsingapore.",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "afternoon",
                        "latitude": "1.289797552793349844080239563481882215",
                        "longigtude": "103.855733871459960938",
                        "created_at": "2014-11-29T17:34:34.565+08:00",
                        "updated_at": "2014-11-30T01:44:57.495+08:00",
                        "source": "foursquare",
                        "source_id": "4b058814f964a52090b022e3"
                    },
                    {
                        "id": 12,
                        "address_blob": "2 Bayfront Ave.,018972,Singapore",
                        "tags": [
                            "Mall"
                        ],
                        "name": "The Shoppes At Marina Bay Sands",
                        "rating": 8.9,
                        "tip": "MBS Shopping Centre. A lot of well-known brands have branches open at here. From apparel, accessories to foods, technologies till personal beauty.",
                        "avg_time_spent": 2,
                        "best_time_for_visit": "afternoon",
                        "latitude": "1.283750816497153390827179464395157993",
                        "longigtude": "103.858721464788530397527210880070924759",
                        "created_at": "2014-11-29T17:34:34.489+08:00",
                        "updated_at": "2014-11-30T01:46:12.348+08:00",
                        "source": "foursquare",
                        "source_id": "4bd6b4925631c9b60239a630"
                    },
                    {
                        "id": 23,
                        "address_blob": "150 Tyrwhitt Rd,207563,Singapore",
                        "tags": [
                            "Coffee Shop"
                        ],
                        "name": "Chye Seng Huat Hardware Coffee Bar",
                        "rating": 8.7,
                        "tip": "As an ex-barista working the scene in Australia, I must say the coffee is one of the best I've had in Singapore.",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "afternoon",
                        "latitude": "1.311630240298663929721101339964661747",
                        "longigtude": "103.860403097274115680193062871694564819",
                        "created_at": "2014-11-29T17:34:34.678+08:00",
                        "updated_at": "2014-11-30T01:47:38.171+08:00",
                        "source": "foursquare",
                        "source_id": "50227b21e4b02e5c64efc45d"
                    }
                ]
            },
            "evening": {
                "venues": [
                    {
                        "id": 15,
                        "address_blob": "Siloso Beach Walk,098998,Singapore",
                        "tags": [
                            "Beach"
                        ],
                        "name": "Siloso Beach",
                        "rating": 9.3,
                        "tip": "Rest and relax!",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "evening",
                        "latitude": "1.253993522268997740098939175368286669",
                        "longigtude": "103.813548088073730469",
                        "created_at": "2014-11-29T17:34:34.535+08:00",
                        "updated_at": "2014-11-30T01:44:24.319+08:00",
                        "source": "foursquare",
                        "source_id": "4c00a065ad46c9b6f7e08f66"
                    },
                    {
                        "id": 5,
                        "address_blob": "8 Marina Gardens Dr.,018951,Singapore",
                        "tags": [
                            "Scenic Lookout"
                        ],
                        "name": "Marina Barrage",
                        "rating": 9.3,
                        "tip": "Marina Barrage is as a great @visitsingapore attraction. Have a picnic, hold photoshoots, or try a sport at the neighboring Marina Resevoir like windsurfing or dragonboating.",
                        "avg_time_spent": 1,
                        "best_time_for_visit": "evening",
                        "latitude": "1.280519444083777491627529343531932682",
                        "longigtude": "103.870518207550048828",
                        "created_at": "2014-11-29T17:34:34.369+08:00",
                        "updated_at": "2014-11-30T01:44:08.167+08:00",
                        "source": "foursquare",
                        "source_id": "4b058810f964a52040af22e3"
                    },
                    {
                        "id": 9,
                        "address_blob": "Orchard Rd.,Singapore",
                        "tags": [
                            "Pedestrian Plaza"
                        ],
                        "name": "Orchard Road",
                        "rating": 9.3,
                        "tip": "It's beginning to look a lot like Christmas..",
                        "avg_time_spent": 2,
                        "best_time_for_visit": "evening",
                        "latitude": "1.303183712391310367095798028458375484",
                        "longigtude": "103.835091590881347656",
                        "created_at": "2014-11-29T17:34:34.437+08:00",
                        "updated_at": "2014-11-30T01:44:16.341+08:00",
                        "source": "foursquare",
                        "source_id": "4c36169304cbb7137afbed0d"
                    }
                ]
            }
        }
    ],
    "created_at": "2014-11-30T02:02:21.578+08:00",
    "updated_at": "2014-11-30T02:02:21.578+08:00"
}
```

## Get Existed Itineraries ##

* URL: `api/v1/itineraries`
* method: GET
* params : `user_id*`
* response

```javascript```
[
    {
        "id": 4,
        "user_id": 10,
        "duration": 3,
        "data": [
            {
                "whole_day": {
                    "venues": [
                        {
                            "id": 3,
                            "address_blob": "32 Sentosa Gateway (Resorts World Sentosa),098141,Singapore",
                            "tags": [
                                "Theme Park"
                            ],
                            "name": "Universal Studios Singapore",
                            "rating": 9.5,
                            "tip": "definitely have to try the mummy's revenge roller coaster ride!!!",
                            "avg_time_spent": 8,
                            "best_time_for_visit": "whole_day",
                            "latitude": "1.256460562411614523270486643014010042",
                            "longigtude": "103.821358680725097656",
                            "created_at": "2014-11-29T17:34:34.331+08:00",
                            "updated_at": "2014-11-30T01:00:27.137+08:00",
                            "source": "foursquare",
                            "source_id": "4b1ee9ebf964a5207e2124e3"
                        }
                    ]
                }
            },
            {
                "morning": {
                    "venues": [
                        {
                            "id": 1,
                            "address_blob": "18 Marina Gardens Dr.,018953,Singapore",
                            "tags": [
                                "Garden"
                            ],
                            "name": "Gardens By The Bay",
                            "rating": 9.5,
                            "tip": "Don't come here in the afternoon/evening it's really very hot -___-",
                            "avg_time_spent": 3,
                            "best_time_for_visit": "morning",
                            "latitude": "1.282632496081466344506338828068692237",
                            "longigtude": "103.865647315979003906",
                            "created_at": "2014-11-29T17:34:34.271+08:00",
                            "updated_at": "2014-11-30T00:57:42.778+08:00",
                            "source": "foursquare",
                            "source_id": "4b949b12f964a5208e7e34e3"
                        }
                    ]
                },
                "afternoon": {
                    "venues": [
                        {
                            "id": 2,
                            "address_blob": "#04-20/20B/20C Ngee Ann City (391 Orchard Rd),238872,Singapore",
                            "tags": [
                                "Bookstore"
                            ],
                            "name": "Books Kinokuniya 紀伊國屋書店",
                            "rating": 9.5,
                            "tip": "COMPLETE range of books, comics, mags, maps and such. If you need something they don't have, they'll order it in! Top notch quality and service. Best bookstore in anywhere of South-East Asia",
                            "avg_time_spent": 2,
                            "best_time_for_visit": "afternoon",
                            "latitude": "1.303408200000000016771650734881404787",
                            "longigtude": "103.834232000000000084583007264882326126",
                            "created_at": "2014-11-29T17:34:34.305+08:00",
                            "updated_at": "2014-11-30T01:04:32.995+08:00",
                            "source": "foursquare",
                            "source_id": "4b7a6059f964a520002b2fe3"
                        },
                        {
                            "id": 20,
                            "address_blob": "Universal Studios Singapore (Sci-Fi City Zone),099482,Singapore",
                            "tags": [
                                "Theme Park"
                            ],
                            "name": "Transformers The Ride: The Ultimate 3D Battle",
                            "rating": 9.4,
                            "tip": "The Awesome Ride... Well done Freedom Fighter",
                            "avg_time_spent": 2,
                            "best_time_for_visit": "afternoon",
                            "latitude": "1.254247524154620485603572888066992164",
                            "longigtude": "103.821736475858457993126648943871259689",
                            "created_at": "2014-11-29T17:34:34.617+08:00",
                            "updated_at": "2014-11-30T01:43:56.097+08:00",
                            "source": "foursquare",
                            "source_id": "4dfcb419d4c001cca36d3977"
                        }
                    ]
                },
                "evening": {
                    "venues": [
                        {
                            "id": 7,
                            "address_blob": "30 Raffles Ave,039803,Singapore",
                            "tags": [
                                "Theme Park Ride / Attraction"
                            ],
                            "name": "The Singapore Flyer",
                            "rating": 9.5,
                            "tip": "The Singapore Flyer is the world's tallest ferrie. This landmark rises 165 meters into the air and has 28 cars attached to its outer edge. Great view is included!",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "evening",
                            "latitude": "1.289357781928425428219497916870750487",
                            "longigtude": "103.863083124160766602",
                            "created_at": "2014-11-29T17:34:34.399+08:00",
                            "updated_at": "2014-11-30T01:05:24.031+08:00",
                            "source": "foursquare",
                            "source_id": "4b058810f964a52054af22e3"
                        },
                        {
                            "id": 6,
                            "address_blob": "Along East Coast Pkwy (East Coast Park Service Rd),455511,Singapore",
                            "tags": [
                                "Beach"
                            ],
                            "name": "East Coast Park",
                            "rating": 9.4,
                            "tip": "Follow Foursquare Cities, check-in to 5 venues on Lion City list and earn Lion City badge.",
                            "avg_time_spent": 2,
                            "best_time_for_visit": "evening",
                            "latitude": "1.305114402633707593182066375447902828",
                            "longigtude": "103.927402496337890625",
                            "created_at": "2014-11-29T17:34:34.384+08:00",
                            "updated_at": "2014-11-30T01:05:38.365+08:00",
                            "source": "foursquare",
                            "source_id": "4bec2a8561aca593cae38500"
                        },
                        {
                            "id": 11,
                            "address_blob": "10 Bayfront Avenue,018956,Singapore",
                            "tags": [
                                "Scenic Lookout"
                            ],
                            "name": "Marina Bay Sands Boardwalk",
                            "rating": 9.4,
                            "tip": "The light show start at 8 pm and 9.30 pm. Come here before the show is a better idea, coz you can get to sit on first line.",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "evening",
                            "latitude": "1.284048347205376972013368686020839959",
                            "longigtude": "103.858491182327270508",
                            "created_at": "2014-11-29T17:34:34.473+08:00",
                            "updated_at": "2014-11-30T01:43:37.315+08:00",
                            "source": "foursquare",
                            "source_id": "4ce55576ca41236ac9b37b4b"
                        }
                    ]
                }
            },
            {
                "morning": {
                    "venues": [
                        {
                            "id": 10,
                            "address_blob": "80 Mandai Lake Rd.,729826,Singapore",
                            "tags": [
                                "Zoo"
                            ],
                            "name": "Singapore Zoo",
                            "rating": 9.2,
                            "tip": "Check out the fragile forest - many people walk past as it's not obvious from the path - you walk around inside the enclosure with fruit bats, sloths, lemurs, deer, parrots and butterflies.",
                            "avg_time_spent": 3,
                            "best_time_for_visit": "morning",
                            "latitude": "1.404778859988833339400571276200935245",
                            "longigtude": "103.79058837890625",
                            "created_at": "2014-11-29T17:34:34.453+08:00",
                            "updated_at": "2014-11-30T01:44:39.052+08:00",
                            "source": "foursquare",
                            "source_id": "4b05880ef964a520b8ae22e3"
                        }
                    ]
                },
                "afternoon": {
                    "venues": [
                        {
                            "id": 17,
                            "address_blob": "1 Esplanade Dr.,038981,Singapore",
                            "tags": [
                                "Theater"
                            ],
                            "name": "Esplanade - Theatres On The Bay",
                            "rating": 9.2,
                            "tip": "This integrated arts centre boasts a concert hall, theatre, studios and more, and its distinctive shape has made it a giant cultural landmark in @visitsingapore.",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "afternoon",
                            "latitude": "1.289797552793349844080239563481882215",
                            "longigtude": "103.855733871459960938",
                            "created_at": "2014-11-29T17:34:34.565+08:00",
                            "updated_at": "2014-11-30T01:44:57.495+08:00",
                            "source": "foursquare",
                            "source_id": "4b058814f964a52090b022e3"
                        },
                        {
                            "id": 12,
                            "address_blob": "2 Bayfront Ave.,018972,Singapore",
                            "tags": [
                                "Mall"
                            ],
                            "name": "The Shoppes At Marina Bay Sands",
                            "rating": 8.9,
                            "tip": "MBS Shopping Centre. A lot of well-known brands have branches open at here. From apparel, accessories to foods, technologies till personal beauty.",
                            "avg_time_spent": 2,
                            "best_time_for_visit": "afternoon",
                            "latitude": "1.283750816497153390827179464395157993",
                            "longigtude": "103.858721464788530397527210880070924759",
                            "created_at": "2014-11-29T17:34:34.489+08:00",
                            "updated_at": "2014-11-30T01:46:12.348+08:00",
                            "source": "foursquare",
                            "source_id": "4bd6b4925631c9b60239a630"
                        },
                        {
                            "id": 23,
                            "address_blob": "150 Tyrwhitt Rd,207563,Singapore",
                            "tags": [
                                "Coffee Shop"
                            ],
                            "name": "Chye Seng Huat Hardware Coffee Bar",
                            "rating": 8.7,
                            "tip": "As an ex-barista working the scene in Australia, I must say the coffee is one of the best I've had in Singapore.",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "afternoon",
                            "latitude": "1.311630240298663929721101339964661747",
                            "longigtude": "103.860403097274115680193062871694564819",
                            "created_at": "2014-11-29T17:34:34.678+08:00",
                            "updated_at": "2014-11-30T01:47:38.171+08:00",
                            "source": "foursquare",
                            "source_id": "50227b21e4b02e5c64efc45d"
                        }
                    ]
                },
                "evening": {
                    "venues": [
                        {
                            "id": 15,
                            "address_blob": "Siloso Beach Walk,098998,Singapore",
                            "tags": [
                                "Beach"
                            ],
                            "name": "Siloso Beach",
                            "rating": 9.3,
                            "tip": "Rest and relax!",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "evening",
                            "latitude": "1.253993522268997740098939175368286669",
                            "longigtude": "103.813548088073730469",
                            "created_at": "2014-11-29T17:34:34.535+08:00",
                            "updated_at": "2014-11-30T01:44:24.319+08:00",
                            "source": "foursquare",
                            "source_id": "4c00a065ad46c9b6f7e08f66"
                        },
                        {
                            "id": 5,
                            "address_blob": "8 Marina Gardens Dr.,018951,Singapore",
                            "tags": [
                                "Scenic Lookout"
                            ],
                            "name": "Marina Barrage",
                            "rating": 9.3,
                            "tip": "Marina Barrage is as a great @visitsingapore attraction. Have a picnic, hold photoshoots, or try a sport at the neighboring Marina Resevoir like windsurfing or dragonboating.",
                            "avg_time_spent": 1,
                            "best_time_for_visit": "evening",
                            "latitude": "1.280519444083777491627529343531932682",
                            "longigtude": "103.870518207550048828",
                            "created_at": "2014-11-29T17:34:34.369+08:00",
                            "updated_at": "2014-11-30T01:44:08.167+08:00",
                            "source": "foursquare",
                            "source_id": "4b058810f964a52040af22e3"
                        },
                        {
                            "id": 9,
                            "address_blob": "Orchard Rd.,Singapore",
                            "tags": [
                                "Pedestrian Plaza"
                            ],
                            "name": "Orchard Road",
                            "rating": 9.3,
                            "tip": "It's beginning to look a lot like Christmas..",
                            "avg_time_spent": 2,
                            "best_time_for_visit": "evening",
                            "latitude": "1.303183712391310367095798028458375484",
                            "longigtude": "103.835091590881347656",
                            "created_at": "2014-11-29T17:34:34.437+08:00",
                            "updated_at": "2014-11-30T01:44:16.341+08:00",
                            "source": "foursquare",
                            "source_id": "4c36169304cbb7137afbed0d"
                        }
                    ]
                }
            }
        ],
        "created_at": "2014-11-30T02:02:21.578+08:00",
        "updated_at": "2014-11-30T02:02:21.578+08:00"
    },
    {
        "id": 3,
        "user_id": 10,
        "duration": 1,
        "data": [
            {
                "whole_day": {
                    "venues": [
                        {
                            "id": 3,
                            "address_blob": "32 Sentosa Gateway (Resorts World Sentosa),098141,Singapore",
                            "tags": [
                                "Theme Park"
                            ],
                            "name": "Universal Studios Singapore",
                            "rating": 9.5,
                            "tip": "definitely have to try the mummy's revenge roller coaster ride!!!",
                            "avg_time_spent": 8,
                            "best_time_for_visit": "whole_day",
                            "latitude": "1.256460562411614523270486643014010042",
                            "longigtude": "103.821358680725097656",
                            "created_at": "2014-11-29T17:34:34.331+08:00",
                            "updated_at": "2014-11-30T01:00:27.137+08:00",
                            "source": "foursquare",
                            "source_id": "4b1ee9ebf964a5207e2124e3"
                        }
                    ]
                }
            }
        ],
        "created_at": "2014-11-30T02:00:17.761+08:00",
        "updated_at": "2014-11-30T02:00:17.761+08:00"
    },
    {
        "id": 2,
        "user_id": 10,
        "duration": 1,
        "data": [
            {
                "whole_day": {
                    "venues": [
                        {
                            "id": 3,
                            "address_blob": "32 Sentosa Gateway (Resorts World Sentosa),098141,Singapore",
                            "tags": [
                                "Theme Park"
                            ],
                            "name": "Universal Studios Singapore",
                            "rating": 9.5,
                            "tip": "definitely have to try the mummy's revenge roller coaster ride!!!",
                            "avg_time_spent": 8,
                            "best_time_for_visit": "whole_day",
                            "latitude": "1.256460562411614523270486643014010042",
                            "longigtude": "103.821358680725097656",
                            "created_at": "2014-11-29T17:34:34.331+08:00",
                            "updated_at": "2014-11-30T01:00:27.137+08:00",
                            "source": "foursquare",
                            "source_id": "4b1ee9ebf964a5207e2124e3"
                        }
                    ]
                }
            }
        ],
        "created_at": "2014-11-30T01:55:33.529+08:00",
        "updated_at": "2014-11-30T01:55:33.529+08:00"
    }
]

```

## Delete Itinerary ##

* URL: "/api/v1/itineraries/:id"
* params: `user_id*`
* method: `delete`
* response: Same as one itinerary