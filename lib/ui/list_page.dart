class Product {
  String tital;
  String imgUrl;

  Product({String t, String i}) {
    tital = t;
    imgUrl = i;
  }
}

class Items {
  List<Product> items = [
    Product(
        t: 'Milk',
        i: 'https://images.unsplash.com/photo-1550583724-b2692b85b150?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
    Product(
      t: 'Bred',
      i: 'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80',
    ),
    Product(
      t: 'Onions',
      i: 'https://images.unsplash.com/photo-1467019972079-a273e1bc9173?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    ),
    Product(
      t: 'Apple',
      i: 'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    ),
    Product(
      t: 'Egg',
      i: 'https://images.unsplash.com/photo-1589928030689-87f068eea1e3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGVnZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      t: 'Mango',
      i: 'https://images.unsplash.com/photo-1553279768-865429fa0078?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80',
    ),
    Product(
      t: 'Juice',
      i: 'https://images.unsplash.com/photo-1525385133512-2f3bdd039054?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=332&q=80',
    )
  ];
}
