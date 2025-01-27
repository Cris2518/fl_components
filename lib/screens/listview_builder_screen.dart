import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final List<int> items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  var isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.pixels + 100 >= scrollController.position.maxScrollExtent){
        // add10();
        fetchDate();
      }
    });
  }

  Future fetchDate() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(Duration(seconds: 3));

    add10();

    isLoading = false;
    setState(() {});
  }

  void add10(){
    final lastId = items.last;
    items.addAll( 
      [1,2,3,4,5,6,7,8,9,10].map((e) => e + lastId)
    );
    setState(() {});

    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn
    );
  }

  Future<void> onRefresh() async{
    await Future.delayed(Duration(seconds: 2));
    final lastId = items.last;
    items.clear();
    items.add(lastId + 1);
    add10();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(

          children: [ 
            RefreshIndicator.adaptive(
              color: AppTheme.primary,
              onRefresh: () => onRefresh(),
              child: ListView.builder(
              physics: BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/jar-loading.gif'), 
                  image: NetworkImage('https://picsum.photos/500/300?image=${items[index]}'),
                );
              },
                        ),
            ),

          if (isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: _LoadingIcon()
            )

          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(1),
        shape: BoxShape.circle
      ),
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}