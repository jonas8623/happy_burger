

import 'package:exemplo_ifood/models/food_model.dart';

class FoodRepository {

  static List<FoodModel> burgers = [
    FoodModel(
        name: 'X-Carne',
        description: 'Acompanha: carne, ovo, alface, tomate, maionese, presunto, queijo',
        price: 'R\$ 18,00',
        image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'X-Calabresa',
        description: 'Acompanha: calabresa, carne, ovo, alface, tomate, maionese, presunto, queijo',
        price: 'R\$ 22,00',
        image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'X-Coração',
        description: 'Acompanha: coração, carne, ovo, alface, tomate, maionese, presunto, queijo',
        price: 'R\$ 22,00',
        image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'X-Bacon',
        description: 'Acompanha: bacon, carne, ovo, alface, tomate, maionese, presunto, queijo',
        price: 'R\$ 22,00',
        image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'X-Tudo',
        description: 'Acompanha: carne, calabresa, frango, coração, bacon, carne, ovo, alface, tomate, maionese, presunto, queijo',
        price: 'R\$ 30,00',
        image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    )
  ];

  static List<FoodModel> pizzas = [
    FoodModel(
        name: 'Pizza Familia',
        description: 'Pizza de familia acompanha os sabores: calabresa, strogonoff, frango c/catupiry e alho e óleo com borda recheada',
        price: 'R\$ 60,00',
        image: 'https://images.unsplash.com/photo-1601924582970-9238bcb495d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'Pizza Média',
        description: 'Pizza média acompanha os sabores: calabresa, bacca com borda recheada e acompanha um refri 2LT',
        price: 'R\$ 45,00',
        image: 'https://images.unsplash.com/photo-1601924582970-9238bcb495d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    ),
    FoodModel(
        name: 'Pizza Pequena',
        description: 'Pizza pequena acompanha os sabores: calabresa com queijo e um refri de 2LT',
        price: 'R\$ 30,00',
        image: 'https://images.unsplash.com/photo-1601924582970-9238bcb495d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBpenphfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    )
  ];

  static List<FoodModel> combos = [
    FoodModel(
        name: 'Combo 1',
        description: 'Combo 1 acompanha: 4 X-Carnes, batatas fritas e 1 refri 3LT',
        price: 'R\$ 100,00',
        image: 'https://images.unsplash.com/photo-1558250070-363aa42f9a00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZCUyMGNvbWJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    )
  ];

}