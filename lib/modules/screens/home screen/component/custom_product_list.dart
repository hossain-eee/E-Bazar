import '../../../../utils/export.dart';import 'banner_card.dart';class CustomProductList extends StatelessWidget {  final List<ProductModel> productList;  final int maxItems;  const CustomProductList({    super.key,    required this.productList,    this.maxItems = 3,  });  @override  Widget build(BuildContext context) {    return GetBuilder<HomeScreenController>(      builder: (controller) {        int length = controller.productList.length;        return ListView.builder(          physics: const NeverScrollableScrollPhysics(),          shrinkWrap: true,          itemCount: length > maxItems ? maxItems : length,          itemBuilder: (context, index) {            ProductModel data = controller.productList[index];            return BannerCard(              img: data.img.toString(),              name: data.name.toString(),              price: data.price.toString(),              buyNow: () {},              isFav: () {},            );          },        );      },    );  }}