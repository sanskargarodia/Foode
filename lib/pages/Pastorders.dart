import 'package:flutter/material.dart';
import 'package:food/widgets/Ui_size.dart';
import 'package:food/widgets/Divider.dart';

class Past_orders extends StatelessWidget {
  const Past_orders({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                height: 50.0,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(

                      'PAST ORDERS',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.grey[700], fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              _PastOrderListView(),
            ],
          ),


        )

    );
  }
}



class _PastOrderListView extends StatelessWidget {
  final List<String> restaurants = [
    'Sea Emperor',
    'Fireflies Restaurant',
    'Chai Truck',
  ];

  final List<String> foods = [
    'Pepper BBQ x 1',
    'Chicken Noodles x 1',
    'Milk Tea x 1',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: restaurants.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => _PastOrdersListItemView(
            restaurant: restaurants[index],
            foodItem: foods[index],
          ),
        ),
        TextButton(
          child: Text(
            'VIEW MORE ORDERS',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Colors.black),
          ),
          onPressed: () {},
        ),
        UIHelper.verticalSpaceSmall(),
        CustomDividerView(),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 20.0),
          height: 130.0,
          color: Colors.grey[200],
          child: Text(
            'App Version v3.0.0',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.grey[700], fontSize: 13.0),
          ),
        )
      ],
    );
  }
}

class _PastOrdersListItemView extends StatelessWidget {
  const _PastOrdersListItemView({
    Key key,
    @required this.restaurant,
    @required this.foodItem,
  })  : assert(restaurant != '', foodItem != ''),
        super(key: key);

  final String restaurant;
  final String foodItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      'mumbai',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 12.0),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Row(
                      children: <Widget>[
                        Text('Rs112'),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.grey[600])
                      ],
                    )
                  ],
                ),
                Spacer(),
                Text('Delivered', style: Theme.of(context).textTheme.subtitle2),
                UIHelper.horizontalSpaceSmall(),
                ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(2.2),
                    color: Colors.green,
                    child: Icon(Icons.check, color: Colors.white, size: 14.0),
                  ),
                )
              ],
            ),
          ),
          UIHelper.verticalSpaceSmall(),
          DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(foodItem),
              UIHelper.verticalSpaceExtraSmall(),
              Text('July 14, 2:11 AM'),
              UIHelper.verticalSpaceSmall(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.5, color: Colors.black),
                          ),
                          child: Text(
                            'REORDER',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(color:Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        UIHelper.verticalSpaceMedium(),
                        Text('Delivery rating not\napplicable for this order',
                            maxLines: 2)
                      ],
                    ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.5, color: Colors.black),
                          ),
                          child: Text(
                            'RATE FOOD',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        UIHelper.verticalSpaceMedium(),
                        Text("You haven't rated\nthis food yet")
                      ],
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              CustomDividerView(dividerHeight: 1.5, color: Colors.black)
            ],
          )
        ],
      ),
    );
  }
}

class DottedSeperatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 400,
        itemBuilder: (context, index) => ClipOval(
          child: Container(
            margin: const EdgeInsets.all(3.0),
            width: 2.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

