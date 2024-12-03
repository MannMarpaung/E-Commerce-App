part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m Mikazuki',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Let\' explore your world!',
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // "All Product"
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Text(
                  'All Products',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // "Shoes"
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: transparantColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Shoes',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // "Tent"
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: transparantColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Tent',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // "Carrir"
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: transparantColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Carrier',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // "Cargo"
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: transparantColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Cargo',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget newArrivalTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'New Arrival',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivalProduct() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: ListView(
          children: [
            header(),
            const SizedBox(
              height: 15,
            ),
            category(),
            const SizedBox(
              height: 30,
            ),
            popularProductTitle(),
            const SizedBox(
              height: 15,
            ),
            popularProduct(),
            const SizedBox(
              height: 15,
            ),
            newArrivalTitle(),
            newArrivalProduct(),
          ],
        ),
      ),
    );
  }
}
