import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final double rating;
  final String price;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.rating,
    @required this.price,
  });
}

// demo places

List<Place> demoPlaces = [
  Place(
    id: 1,
    name: 'Souq Al-Qaysarriya',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Muharraq',
    image: 'assets/images/souqalqaysarriya.jpg',
    rating: 4,
    price: "Free"
  ),
  Place(
    id: 2,
    name: 'Qalat-Al-Bahrain',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Seef, Karbabad',
    image: 'assets/images/Qalatalabharin.jpg',
    rating: 3,
    price: "3.500 BHD"
  ),
  Place(
    id: 3,
    name: 'National Museum',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Manama, Bahrain',
    image: 'assets/images/Nationalmuseum.jpg',
    rating: 5,
    price: "1.500 BHD"
  ),
  Place(
    id: 4,
    name: 'Bu-Maher Fort',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Muharraq, Bahrain',
    image: 'assets/images/BuMaherfort.jpg',
    rating: 3,
    price: "2.000 BHD"
  ),
];