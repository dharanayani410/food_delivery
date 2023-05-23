import 'package:food_delivery/models/food_modal.dart';

class Global {
  static List category = [
    {
      'food': 'South Indian',
      'name': 'Idli',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnJD3tDTPxm2vvZUhoV5YXlRA4J9eRYCBPpg&usqp=CAU',
      'time': '22 minutes',
      'price': 40,
      'list': south,
      'rating': 4.2
    },
    {
      'food': 'Chinese',
      'name': 'Dry Manchurian',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9uJ4RaF-e_pcNPKdMlNUt5S9aL_5NnkdtHQ&usqp=CAU',
      'price': 120,
      'time': '25 minutes',
      'rating': 4.0,
      'list': chinese,
    },
    {
      'food': 'Pizza',
      'name': 'Margherita Pizza',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTP3Xg98whHDBt-2EdLaoo9SLqCTJwlUmU3w&usqp=CAU',
      'price': 450,
      'time': '30 minutes',
      'rating': 4.5,
      'list': pizza,
    },
    {
      'food': 'Burger',
      'name': 'mexican burger',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzhP56yKfe_J051OaB3fszvDiPntJ01XtHkQ&usqp=CAU',
      'price': 100,
      'time': '25 minutes',
      'rating': 4.5,
      'list': burger,
    },
    {
      'food': 'Sizzler',
      'name': 'Chilli Paneer Sizzler',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUjrYvPeg-i5-nLO6RAA_De9bAOGmAGPzAQ&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0,
      'list': sizzler,
    },
    {
      'food': 'Punjabi',
      'name': 'Veg. Angara ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxQvV8f2HnXqG1j5N602dCW08gohmUpeYNw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0,
      'list': punjabi,
    },
    {
      'food': 'Mexican',
      'name': 'Mexican',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYOGG8mcJglPY-nqfp7NRChIDxdHptZ6ZzQw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0,
      'list': mexican,
    },
  ];
  static List<Map<String, dynamic>> newSouth = [
    {
      'name': 'dosa',
      'details': 'Paper , Maisur , Sambhar , Coconut Chutney',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgM3Ti-TcY0lUK0JquBMtiQtqsMD_m3Mp-_M0Q38W3WHlROmYxnQsGIEqzZxtQCQSHLrE&usqp=CAU',
      'price': 150,
      'time': '30 minutes',
      'rating': 4.5
    },
    {
      'name': 'Idli',
      'details': 'Idli , Sambhar , Coconut Chutney',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnJD3tDTPxm2vvZUhoV5YXlRA4J9eRYCBPpg&usqp=CAU',
      'price': 40,
      'time': '22 minutes',
      'rating': 4.2
    },
    {
      'name': 'Uttapam',
      'details': 'Uttapam , Sambhar , Coconut Chutney ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMqyK3RHYtFDVjm04aQr9WShpXVfC8KBuzw&usqp=CAU',
      'price': 50,
      'time': '15 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mendu Vada',
      'details': 'Vada , Sambhar , Coconut Chutney',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu0i9_wyb-HUleSi12I9mnFMRChaukZchAvw&usqp=CAU',
      'price': 40,
      'time': '30 minutes',
      'rating': 4.7
    },
    {
      'name': 'Upma',
      'details': 'Soji , Capsicum , Onion , Garlic',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEAxsDGt1wpxAg2flNw_qXtyPkgKLo6TPmHiHKlMYH3ULeaB8Ptc4oRAKvM0oBw60rkzo&usqp=CAU',
      'price': 60,
      'time': '25 minutes',
      'rating': 3.5
    },
    {
      'name': 'Appam',
      'details': 'Appam , Coconut Chutney , Catchup',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSDEjeviLMC0AFVBjER2BmEI9cKF16H41OOw&usqp=CAU',
      'price': 100,
      'time': '22 minutes',
      'rating': 3.8
    }
  ];
  static List<FoodModal> south = newSouth
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List<Map<String, dynamic>> newChinese = [
    {
      'name': 'manchurian',
      'details': 'Cabbage , Carrot , Garlic , Onion , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBAKA4gkH4y9SiXarniCyJDLlAfe_OZ2rKXA&usqp=CAU',
      'price': 120,
      'time': '25 minutes',
      'rating': 4.0
    },
    {
      'name': 'Dry Manchurian',
      'details': 'Cabbage , Carrot , Garlic , Onion , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9uJ4RaF-e_pcNPKdMlNUt5S9aL_5NnkdtHQ&usqp=CAU',
      'price': 120,
      'time': '25 minutes',
      'rating': 4.0
    },
    {
      'name': 'Hakka Noddles',
      'details': 'Noddles , Vegetable , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3V7Eehweuz8YPLTdSanR32AJUTnNs1_SqRA&usqp=CAU',
      'price': 80,
      'time': '20 minutes',
      'rating': 4.5
    },
    {
      'name': 'Chinese Bhel',
      'details': 'Fried Noodles , Vegetable , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxxufjwJ3YSVRQZc-ol3VF1Xpeir6tLXOhVw&usqp=CAU',
      'price': 40,
      'time': '10 minutes',
      'rating': 3.9
    },
    {
      'name': 'Fried Rice',
      'details': 'Rice , Vegetable , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCfx7em2B51N2y8kGerj4fOXUe9_fsVFrfBSWBf4nyhIxg1971HbOrvExfglDw7I6uZZQ&usqp=CAU',
      'price': 130,
      'time': '22 minutes',
      'rating': 4.3
    },
    {
      'name': 'Momos',
      'details': 'Vegetable , Cheese , Garlic Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9s9M8e-ZjMM-zxdpAL6l7bN7wHzxznAYDSWTqlmiuaNuYhPLFUlQTJNfN05AxVICmea4&usqp=CAU',
      'price': 150,
      'time': '15 minutes',
      'rating': 4.7
    },
    {
      'name': 'Pasta',
      'details': 'Pasta , Vegetable , Spicy Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3-nFR19OHy0xFe_yWCulI-WFj750D9zbGBQ&usqp=CAU',
      'price': 120,
      'time': '30 minutes',
      'rating': 4.1
    },
  ];
  static List chinese = newChinese
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List newBurger = [
    {
      'name': 'Aloo Tikki Burger',
      'details':
          'spiced potato patty, often atop a bed of lettuce, tomatoes, onions , chutney',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2gLHZB2QNd-Uq9I198avaXAUAlv33Segeyg&usqp=CAU',
      'price': 50,
      'time': '20 minutes',
      'rating': 4.9
    },
    {
      'name': 'mexican burger',
      'details':
          'salsa, guacamole, chorizo, jalapeno peppers, cilantro,  melted cheese.',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzhP56yKfe_J051OaB3fszvDiPntJ01XtHkQ&usqp=CAU',
      'price': 100,
      'time': '25 minutes',
      'rating': 4.5
    },
    {
      'name': 'Spicy Paneer Wrap Burger',
      'details':
          'grilled paneer patty,onions, tomatoes, lettuce, jalapenos, hot sauce ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL-XCRqCdD4xgsYjMY4a6w6Ne3LpBIEAgaYA&usqp=CAU',
      'price': 120,
      'time': '30 minutes',
      'rating': 4.6
    },
    {
      'name': 'Cheese Lava American Burger',
      'details':
          'Roasted chipotle sauce ,onion , jalapenos ,salad mix ,Cheesy veg patty',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK9Htip7psWypZxo8pQw2fblbOnYUigDQ0WQ&usqp=CAU',
      'price': 250,
      'time': '25 minutes',
      'rating': 4.9
    },
    {
      'name': 'Masala Grill Veg Burger',
      'details': 'potatoes, peas, carrots, beans, tomato, onion, chutney',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-o8lwW6oIGX2TwEJjv3pS0CszHEWXVrJiN9jP6HWUZJPCMPrD1cPFgo2xjAmS0O16UN4&usqp=CAU',
      'price': 70,
      'time': '20 minutes',
      'rating': 4.1
    },
  ];
  static List burger = newBurger
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List newPizza = [
    {
      'name': '7 cheese Pizza',
      'details':
          'onions, black olives, bell peppers , tomatoes, mozzarella cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRms72J0mqef63W5jxHAT2q-kR8CFj2ssHHtw&usqp=CAU',
      'price': 400,
      'time': '30 minutes',
      'rating': 4.1
    },
    {
      'name': 'Margherita Pizza',
      'details':
          'tomato sauce, fresh mozzarella cheese, and fresh basil,olive oil and slices of fresh tomatoes',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTP3Xg98whHDBt-2EdLaoo9SLqCTJwlUmU3w&usqp=CAU',
      'price': 450,
      'time': '30 minutes',
      'rating': 4.5
    },
    {
      'name': 'Hot n Spicy Pizza',
      'details':
          'toppings ,onions, capsicums, tomatoes, chilli flakes, grated cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCf0lbX-jAvCMf_KrJuDW8wSm1huMKvbZQkA&usqp=CAU',
      'price': 390,
      'time': '35 minutes',
      'rating': 4.2
    },
    {
      'name': 'Veg Delight Pizza',
      'details':
          'Tomato sauce ,Mozzarella cheese ,Green peppers ,Mushrooms ,Onions ,Olives ,Fresh basil ,Garlic ,Olive oil ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXPRRPLq5bhPjqfoPsYzsFqOxdvjDOosMA&usqp=CAU',
      'price': 420,
      'time': '30 minutes',
      'rating': 4.0
    },
    {
      'name': 'Paneer cheese Pizza',
      'details': 'paneer ,bell peppers, onions, tomatoes ,sauces',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSza5QgaxVIQ8RC8ppMKK3h30S5ZKMD3eoFlg&usqp=CAU',
      'price': 500,
      'time': '35 minutes',
      'rating': 4.4
    },
    {
      'name': 'Cheese Burst Pizza',
      'details':
          'sauce ,Mozzarella cheese, Parmesan cheese,Oregano,Pepper,Extra virgin olive oil',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrnDfTJoDtIFeb4X01exLbwWPT52Ta3-o9qFx4msRexre1Z_VWWy7h-7YfPli920hT2W4&usqp=CAU',
      'price': 550,
      'time': '40 minutes',
      'rating': 4.6
    },
    {
      'name': 'Thin Crust Pizza',
      'details': 'Pizza Sauce,Cheese,pepperoni, vegetables, ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSweMTkTKispJNxJx-c2vIWwRJRuYHF5F3o7w&usqp=CAU',
      'price': 600,
      'time': '30 minutes',
      'rating': 4.4
    },
  ];
  static List pizza = newPizza
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List newPunjabi = [
    {
      'name': 'Paneer Butter Masala',
      'details':
          'rich & creamy curry made with paneer, spices, onions, tomatoes, cashews , butter. ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRqpAWrxcS5x_5zPtIwQtu7XiTF7EuH3riNg&usqp=CAU',
      'price': 120,
      'time': '15 minutes',
      'rating': 4.2
    },
    {
      'name': 'Kaju Masala',
      'details': 'onions, tomatoes, spices in a creamy gravy ',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfNdq4ahx3q1BZrwPlyMyAvTC2Bl1FXotyeg&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Veg. Angara ',
      'details':
          'Onions, Tomatoes, Yogurt, Spices, carrot, cauliflower, baby corn, paneer, green peas, beans',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxQvV8f2HnXqG1j5N602dCW08gohmUpeYNw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Veg. Handi',
      'details':
          'Onions, Tomatoes, Yogurt, Spices, carrot, cauliflower, baby corn, paneer, green peas, beans',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGWRY7VE-TIcJ0Ay-fmfAhClyhuLeboZfmPA&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Paneer Bhurji',
      'details':
          'Onions, Tomatoes, Garlic, Paneer, Spring Onions, Green chillies',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLxLtfQFL1nzFo7t8OQHmHfVlGrxJt0hLgzA&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Malai Kofta',
      'details':
          'potatoes, crumbled paneer, corn starch, spices, Onion, Garlic',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvdN_oP4ES3bI7bVMCooxLeQpIvttuRoiE0Q&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Veg. Kolhapuri',
      'details':
          'Onions, Tomatoes, Yogurt, Spices, carrot, cauliflower, baby corn, paneer, green peas, beans',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI9XzovDEQh6jyqJEK4ELZ3Epk-5hp7W5uuA&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
  ];
  static List punjabi = newPunjabi
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List newMexican = [
    {
      'name': 'Mexican',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYOGG8mcJglPY-nqfp7NRChIDxdHptZ6ZzQw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mexican Veggie Bowl',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQziIqPN2nYzO7O0iobJozkFNKb8Rt-YLoEXQ&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mexican Potato Skins',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese, Potato',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQo8EHlrYLSzeQRQJq2avZuzvgfFtqKFT4Kw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mexican Tacos',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese, Corn tortillas, Salsa, Sour cream',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLjuv-IiooAXPtT0v-CLGWbthXK7Fjt4zDrQ&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mexican Veggie Crunch Wrap',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese, Tortillas, Cheese Sauce',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS_dQyPRluZQOxbzqsN-kqxt1JcdTJLIWWVw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mexican Burrito Bowl',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese, Sour cream, Veg Rice',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSErHH-IJPL4fVC1es5RUm_gQ9_kRccGKkwzA&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
  ];
  static List mexican = newMexican
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
  static List newSizzler = [
    {
      'name': ' Crazy Italian Sizzler',
      'details': 'Carrots, broccoli and baby corn with luscious cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDmCWJ2IfqhEmazQUpZHC4dn2RlakHCPG7bA&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Chilli Paneer Sizzler',
      'details':
          'Carrots, broccoli and baby corn with luscious cheese, Paneer, Capsicum',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUjrYvPeg-i5-nLO6RAA_De9bAOGmAGPzAQ&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Vegetable Manchurian Sizzler',
      'details':
          ' Onion, Green Capsicum, Paneer Cubes, Cutlets, Manchurian, Fried Rice,',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUjrYvPeg-i5-nLO6RAA_De9bAOGmAGPzAQ&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Mix Veg Hot Garlic Sauce Sizzler',
      'details':
          'Broccoli, Bok Choy, Carrots, Red Bell Peppers, Garlic Cloves, Soy Sauce, Brown Sugar, Chili Garlic Sauce, Rice Vinegar, Sesame Oil, Fresh Ginger, Red Pepper Flakes',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRysHoMTHcKBlWpX9Dre4X-XgW5xLZG5zKWtw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Vegetable Shashik Paneer Singapore Sizzler',
      'details':
          'Paneer, Sweet Bell Peppers, Onions ,Tomato, Garlic, Ginger, Cumin, Coriander, Paprika, Soy Sauce, Lemon Juice, Pepper',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyBuE4DTLvzZKvmvc5pW6R9qB-sLf1hHZQ_A&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
    {
      'name': 'Crazy Mexican Sizzler',
      'details':
          'Romaine lettuce, tomatoes, Cilantro, Red onion, Lime juice, Olive oil, Avocado, Black beans, Corn kernels,Crumbled cheese',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl0D22sXVn_s7Hl-NvZbiRUSsksWT4kp6dMw&usqp=CAU',
      'price': 120,
      'time': '22 minutes',
      'rating': 4.0
    },
  ];
  static List sizzler = newSizzler
      .map((e) => FoodModal(
          name: e['name'],
          details: e['details'],
          image: e['image'],
          price: e['price'],
          time: e['time'],
          rating: e['rating']))
      .toList();
}
