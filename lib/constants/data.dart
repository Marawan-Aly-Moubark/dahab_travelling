import 'package:flutter/material.dart';

List categories = [
  {"name": "Mountain", "icon": Icons.terrain_rounded},
  {"name": "Beach", "icon": Icons.beach_access_rounded},
  {"name": "Diving", "icon": Icons.scuba_diving},
  {"name": "Temple", "icon": Icons.account_balance_rounded},
  {"name": "City", "icon": Icons.location_city_rounded},
  {"name": "Others", "icon": Icons.widgets},
];

List exploreCategories = [
  {"name": "Country", "icon": Icons.terrain_rounded},
  {"name": "State", "icon": Icons.terrain_rounded},
  {"name": "City", "icon": Icons.beach_access_rounded},
  {"name": "Place", "icon": Icons.park_rounded},
];

List hotels = [
  {
    'image':
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/74130024.jpg?k=75a743f04af389f979d6cf9bf3ebe34d0d131f727b444e0a31e2a1d4e74e6c20&o=&hp=1',
    'name': 'Swiss Inn',
    'price': '250',
    "rate": "4",
  },
  {
    'image':
        'https://www.ootlah.com/wp-content/uploads/2021/10/680px-420px-dahab.jpg',
    'name': 'Dahab Paradise',
    'price': '350',
    "rate": "4",
  },
  {
    'image':
        'https://wakescout.com/wp-content/uploads/2020/12/resort--920x518.jpg',
    'name': 'Le Merdian',
    'price': '500',
    "rate": "4",
  },
  {
    'image':
        'https://q-xx.bstatic.com/xdata/images/hotel/840x460/234743560.jpg?k=ecb9af9e3f0fa85382d34adfd8790762b4e2a468f42df0e8c6ff541ab6fe2cb4&o=',
    'name': 'Bedouin Moon ',
    'price': '600',
    "rate": "4",
  },
  {
    'image':
        'https://cf.bstatic.com/xdata/images/hotel/max1280x900/328914422.jpg?k=847b6082db459e024ade2578e2e24b237cca2d1849d63bbb202dedbc96bd9ab1&o=&hp=1',
    'name': 'Happy Life',
    'price': '500',
    "rate": "4",
  },
  {
    'image':
        'https://media-cdn.tripadvisor.com/media/photo-s/02/85/80/82/filename-img-2433-1600px.jpg',
    'name': 'Nesima Resort',
    'price': '900',
    "rate": "4",
  },
];

List populars = [
  {
    "image":
        "https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/dahab-blue-lagoon-julie-peer.jpg",
    "name": "Blue Lagon",
    'price': '250',
    "location": "Dahab, South Sinai",
    "is_favorited": false,
    "description":
        "Departure at 1:00 am the lagoon in a Bedouin night in front of the sea, watching the stars and sunrise Evening including drink and dinner (buried) 250 EGPEvening only 100 EGP  ",
    "rate": "4",
    "id": "blue lagon",
  },
  {
    "image":
        "https://th.bing.com/th/id/OIP.xv3c2t_s3H2Df36iTV_TfgHaE6?pid=ImgDet&rs=1",
    "name": "WishWashi",
    'price': '350',
    "location": "Dahab, South Sinai",
    "is_favorited": true,
    "description":
        "It is 8:30 in the morning in an Arab land cruise, and then we go down and walk among the mountains for about half an hour until we reach the water well.There we will go down the water and enjoy the view of the mountains And then we will return to the head of Satan, and we will have lunch and go to the sea and do snorkeling, and after we finish our day, we will return to DahabTrip price 350 EGPIncludes transfers and lunch",
    "rate": "4",
    "id": "WishWashi",
  },
  {
    "image":
        "https://th.bing.com/th/id/OIP.o8wEzSDkUDj0st5iGVznfAHaE7?pid=ImgDet&rs=1",
    "name": "White Canyon",
    "location": "Dahab, South Sinai",
    'price': '350',
    "is_favorited": true,
    "description":
        "To move from Dahab at 8.30 We go to the White Canyon and walk in the mud for 45 minutes. We go to a valley called him. We sit in it for two hours. We take a snack and one or two types of fruit to do a sand safari in Arabic. After that, we move on the mushroom mountain. We take a picture and move on the colorful valley (the red mountain, the clear canyon of the short valley), and we walk. In it for 30 minutes and we go out to find Arabic, waiting for us.Trip price 350 EGPIncluding transportation, lunch and tour guide",
    "rate": "4",
    "id": "White Canyon",
  },
  {
    "image":
        'https://th.bing.com/th/id/R.c5adbe532300016e62e48369ee244a94?rik=Yl2iq%2b1gon7PVQ&riu=http%3a%2f%2fwww.habibielquseir.com%2fwp-content%2fuploads%2f2013%2f11%2fPA100166_800x4501.jpg&ehk=vWRcTVgM6M8VFVn%2bPxPwHVakmAF7qMdY4ZMDEVczjx8%3d&risl=&pid=ImgRaw&r=0',
    "name": "Three Pools",
    "location": "Dahab, South Sinai",
    'price': '350',
    "is_favorited": true,
    "description":
        "Move at 10 am from the hotel to the Three Balls area to do snorkeling, then take lunch and enjoy photography, then the beach buggy trip to Wadi Jini and return to the hotelThe trip includes transfers to and from the hotel, lunch and a beach buggy trip for 350 EGP",
    "rate": "4",
    "id": "Three Pools",
  },
  {
    "image":
        "https://watanimg.elwatannews.com/image_archive/original_lower_quality/10965693981560078931.jpg",
    "name": "Twaylat Mountain",
    "location": "Dahab, South Sinai",
    'price': '250',
    "is_favorited": false,
    "description":
        "To move at 8.30 pm from the front of the hotel to Jabal Al TawilatAnd then we watch the fire show and the skirt and the dancer.The trip includes dinner buried, the base and the drink 250 EGP",
    "rate": "4",
    "id": "Twaylat Mountain",
  },
  {
    "image":
        "https://www.ibisegypttours.com/media/k2/galleries/2495/glass%20boat2.jpg",
    "name": "Glass Boat",
    "location": "Dahab, South Sinai",
    "is_favorited": false,
    'price': '150',
    "description":
        "Watching the coral reefs and colorful fish through the buzzing on the yachtThe trip is 150",
    "rate": "4",
    "id": "Glass Boat",
  },
  {
    "image":
        "https://pbs.twimg.com/media/Dq6m6rFXcAATi10?format=jpg&name=small",
    "name": "Diving",
    "location": "Dahab, South Sinai",
    "is_favorited": false,
    'price': '400',
    "description": "400 EGP including underwater photography, video and photos",
    "rate": "4",
    "id": "Diving",
  },
];

List countries = [
  {
    "image":
        "https://images.unsplash.com/photo-1602642977157-b7c8b8003afd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Cambodia",
    "location": "Cambodia",
    "is_favorited": true,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Japan",
    "location": "Japan",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1574227492706-f65b24c3688a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Singapore",
    "location": "Singapore",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1565881606991-789a8dff9dbb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "France",
    "location": "France",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1619870973878-e953baf30700?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Thailand",
    "location": "Thailand",
    "is_favorited": true,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1614555383820-941c466f1b52?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "China",
    "location": "China",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1553508978-314fe7d8cf77?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Italy",
    "location": "Italy",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1547448415-e9f5b28e570d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Russia",
    "location": "Russia",
    "is_favorited": false,
    "description":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "rate": 4,
    "id": "pro010",
  },
];
