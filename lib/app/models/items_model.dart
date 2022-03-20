class ItemsModel {
  String id;
  String name;
  int amount;
  String img;

  ItemsModel({
    required this.id,
    required this.name,
    required this.amount,
    required this.img,
  });

  static List<ItemsModel> books = [
    ItemsModel(
        id: '1',
        name: 'Physics',
        amount: 299,
        img: 'https://m.media-amazon.com/images/I/51E53HCUKVL._SY346_.jpg'),
    ItemsModel(
        id: '2',
        name: 'chankya niti',
        amount: 300,
        img:
            'https://images-na.ssl-images-amazon.com/images/I/61F8QALt0kL.jpg'),
    ItemsModel(
        id: '3',
        name: 'Gita',
        amount: 500,
        img:
            'https://5.imimg.com/data5/UP/LE/MY-11183377/bhagavad-gita-28hindi-29-500x500.png'),
    ItemsModel(
        id: '4',
        name: 'stephen hawking book',
        amount: 3000,
        img:
            'https://rukminim2.flixcart.com/image/416/416/k391w280/book/5/7/8/brief-answers-to-the-big-questions-the-final-book-from-stephen-original-imafmezckfrthcp2.jpeg?q=70'),
    // ItemsModel(name: 'Mi K40 Pro', amount: 39999, img: ''),
  ];

  static List<ItemsModel> novels = [
    ItemsModel(
        id: '100',
        name: 'Magic of Thinking Big',
        amount: 999,
        img:
            'https://images-na.ssl-images-amazon.com/images/I/71ZC-ROah6L.jpg'),
    ItemsModel(
        id: '101',
        name: 'The Race of My Life',
        amount: 1199,
        img: "https://m.media-amazon.com/images/I/51N7Pzn3iYL.jpg"),
    ItemsModel(
      id: '102',
      name: 'The Master EL James',
      amount: 999,
      img: "https://images4.penguinrandomhouse.com/cover/9780593152928",
    )
  ];
}
