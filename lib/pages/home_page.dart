import 'package:exemplo_ifood/models/food_model.dart';
import 'package:exemplo_ifood/repositories/food_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<GlobalKey> categories = [GlobalKey(), GlobalKey(), GlobalKey()];
  late ScrollController _scrollController;
  BuildContext? _tabContext;

  Widget foodCategory(String title, int index) {
    return Padding(
      key: categories[index],
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Divider(height: 22.0, thickness: 2.0)
        ],
      ),
    );
  }

  Widget foodItem(FoodModel foodModel) {
    return Column(
      children: [
        ListTile(
          title: Text(foodModel.name),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(foodModel.description, style: const TextStyle(fontSize: 14),),
                  const SizedBox(height: 12.0,),
                  Text(
                    foodModel.price,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
          ),
          trailing: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(foodModel.image, fit: BoxFit.cover,),),
          contentPadding: const EdgeInsets.all(14.0),
        ),
        const Divider()
      ],
    );
  }

  Widget generatedFoodList(List<FoodModel> foodList) {
    return Column(
      children: foodList.map((food) => foodItem(food)).toList(),
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    _scrollController.addListener(changeTabs);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( // Controle das abas da AppBar
        length: categories.length,
        child: Builder(
            builder: (BuildContext context) {
              _tabContext = context; // Passando um contexto para a troca da seleção no TabBar
              return Scaffold(
                appBar: AppBar(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Burguer Feliz', style: TextStyle(fontWeight: FontWeight.w700),),
                      Text('Entrega em torno de 45-50 min', style: TextStyle(fontSize: 14, color: Colors.black54),)
                    ],
                  ),
                  bottom: TabBar(
                      tabs: const [
                        Tab(child: Text('Burguers'),),
                        Tab(child: Text('Pizzas'),),
                        Tab(child: Text('Combos'),)
                      ],
                    onTap: (int index) => scrollTo(index),
                  ),
                ),
                body: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      foodCategory('Burguers', 0),
                      generatedFoodList(FoodRepository.burgers),
                      foodCategory('Pizzas', 1),
                      generatedFoodList(FoodRepository.pizzas),
                      foodCategory('Combos', 2),
                      generatedFoodList(FoodRepository.combos)
                    ],
                  ),
                ),
              );
            }
        )
    );
  }

  scrollTo(int index) async {
    _scrollController.removeListener(changeTabs);
    final category = categories[index].currentContext!; // Acessando o index da categoria
    await Scrollable.ensureVisible(category, duration: const Duration(milliseconds: 400)); // ensureVisible() vai ao encontro do contexto de category e torna visivel o ítem pelo scroll
    _scrollController.addListener(changeTabs);
  }

  changeTabs() {
    late RenderBox? box; // O objeto que retorna as coordenadas da TabBar

    for(var index = 0; index < categories.length; index++) {
      box = categories[index].currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (_scrollController.offset >= position.dy) {
        DefaultTabController.of(_tabContext!)?.animateTo(index, duration: const Duration(milliseconds: 200));
      }
    }
  }

}
