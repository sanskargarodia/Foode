import 'package:flutter/material.dart';
import 'package:food/models/food_model.dart';
import 'package:food/widgets/Ui_size.dart';
import 'package:food/widgets/Divider.dart';

class RestaurantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.favorite_border,color: Colors.black),
          UIHelper.horizontalSpaceSmall(),
          Icon(Icons.search,color: Colors.black),
          UIHelper.horizontalSpaceSmall(),
        ],
      ),
      body: _OrderNowView(),
    );
  }
}

class _OrderNowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Idli shop',
                    style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text('South Indian', style: Theme.of(context).textTheme.bodyText1),
                  UIHelper.verticalSpaceExtraSmall(),
                  Text('Nerul', style: Theme.of(context).textTheme.bodyText1),
                  UIHelper.verticalSpaceMedium(),
                  CustomDividerView(dividerHeight: 1.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildVerticalStack(context, '4.1', 'Packaging 80%'),
                      _buildVerticalStack(context, '29 mins', 'Delivery Time'),
                      _buildVerticalStack(context, 'Rs150', 'For Two'),
                    ],
                  ),
                  CustomDividerView(dividerHeight: 1.0),
                  UIHelper.verticalSpaceSmall(),
                ],
              ),
            ),
            CustomDividerView(dividerHeight: 15.0),
            Container(
              height: 80.0,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.filter_vintage, color: Colors.green, size: 12.0),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Text('PURE VEG',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontWeight: FontWeight.bold, fontSize: 16.0))
                      ],
                    ),
                  ),
                  CustomDividerView(dividerHeight: 0.5, color: Colors.black)
                ],
              ),
            ),
            _FoodListView(
              title: 'Breakfast',
              foods: RestaurantDetail.getBreakfast(),
            ),
            CustomDividerView(dividerHeight: 15.0),
            _FoodListView(
              title: 'All Time Favourite',
              foods: RestaurantDetail.getAllTimeFavFoods(),
            ),
            CustomDividerView(dividerHeight: 15.0),
            _FoodListView(
              title: 'Kozhukattaiyum & Paniyarams',
              foods: RestaurantDetail.getOtherDishes(),
            )
          ],
        ),
      ),
    );
  }


  Expanded _buildVerticalStack(BuildContext context, String title, String subtitle) => Expanded(
    child: SizedBox(
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 15.0),
          ),
          UIHelper.verticalSpaceExtraSmall(),
          Text(subtitle, style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 13.0))
        ],
      ),
    ),
  );
}

class AddBtnView extends StatelessWidget {
  const AddBtnView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 25.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        'ADD',
        style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.green),
      ),
    );
  }
}

class _FoodListView extends StatelessWidget {
  const _FoodListView({
    Key key,
    @required this.title,
    @required this.foods,
  }) : super(key: key);

  final String title;
  final List<RestaurantDetail> foods;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          UIHelper.verticalSpaceMedium(),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 18.0),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: foods.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UIHelper.verticalSpaceSmall(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      UIHelper.horizontalSpaceMedium(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              foods[index].title,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Text(
                              foods[index].price,
                              style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 14.0),
                            ),
                            UIHelper.verticalSpaceMedium(),
                            if (foods[index].desc != null)
                              Text(
                                foods[index].desc,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  fontSize: 12.0,
                                  color: Colors.grey[500],
                                ),
                              ),
                          ],
                        ),
                      ),
                      AddBtnView()
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
