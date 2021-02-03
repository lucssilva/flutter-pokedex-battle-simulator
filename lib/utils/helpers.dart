import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract class UI {
  static Color getColorType(String type) {
    switch (type) {
      case 'normal':
        return Colors.brown[400];
      case 'fire':
        return Colors.red;
      case 'water':
        return Colors.blue;
      case 'grass':
        return Colors.green;
      case 'electric':
        return Colors.amber;
      case 'ice':
        return Colors.cyanAccent[400];
      case 'fighting':
        return Colors.orange;
      case 'poison':
        return Colors.purple;
      case 'ground':
        return Colors.orange[300];
      case 'flying':
        return Colors.indigo[200];
      case 'psychic':
        return Colors.pink;
      case 'bug':
        return Colors.lightGreen[500];
      case 'rock':
        return Colors.grey;
      case 'ghost':
        return Colors.indigo[400];
      case 'dark':
        return Colors.brown;
      case 'dragon':
        return Colors.indigo[800];
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.black;
    }
  }

  static SvgPicture getIconType(String type) {
    switch (type) {
      case 'normal':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'fire':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'water':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'grass':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'electric':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'ice':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'fighting':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'poison':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'ground':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'flying':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'psychic':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'bug':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'rock':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'ghost':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'dark':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'dragon':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'steel':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      case 'fairy':
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
      default:
        return SvgPicture.asset(
            'assets/icons/Types/${Format.toUpperFirst(type)}.svg');
    }
  }
}

abstract class Format {
  static String toUpperFirst(String text) {
    final list =
        text.trim().split(' ').map((str) => str.toLowerCase()).toList();
    final firsts =
        list.map((str) => str.split('').first.toUpperCase()).toList();

    final List<String> result = [];
    firsts.asMap().forEach(
          (i, char) => result.add('$char${list[i].substring(1)}'),
        );

    return result.join(' ');
  }
}
