part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 235,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(
              0.1,
            ),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(
              1,
              1,
            ),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            width: 215,
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  25,
                ),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_shoes.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              15,
              10,
              15,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Sepatu Gunung Arei V2',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                    color: blackColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  NumberFormat.currency(
                    symbol: 'IDR',
                    locale: 'id-ID',
                    decimalDigits: 0,
                  ).format(
                    799000,
                  ),
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
