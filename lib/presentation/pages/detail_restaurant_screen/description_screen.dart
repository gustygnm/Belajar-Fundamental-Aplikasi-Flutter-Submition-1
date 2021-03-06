part of 'detail_restaurant_screen.dart';

class DescriptionScreen extends StatelessWidget {
  final RestaurantEntity restaurantEntity;

  DescriptionScreen({
    this.restaurantEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: ListView(
        children: [
          Text(
            restaurantEntity.name,
            style: GoogleFonts.poppins(
                fontSize: 19, fontWeight: FontWeight.w600, letterSpacing: 0.15),
          ),
          SizedBox(
            height: 8.w,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(restaurantEntity.rating,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: cDarkGrey,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.15)),
              ),
              SizedBox(
                width: 16.w,
              ),
              Icon(
                Icons.location_on,
                color: cGrey,
                size: 16.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                    restaurantEntity.address + ", " + restaurantEntity.city,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: cDarkGrey,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.15)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.w),
            child: Text(
              "Description",
              style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.w),
            child: Text(
              restaurantEntity.description,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: cGrey,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.15),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Foods',
            style: GoogleFonts.poppins(
                fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          ),
          SizedBox(height: 8.w),
          SizedBox(
            height: 160.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: restaurantEntity.menus.foods.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image.network(
                            restaurantEntity.menus.foods[index].image,
                            height: 80.w,
                            width: 120.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          restaurantEntity.menus.foods[index].name,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: cGrey,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.15),
                        ),
                        Text(
                          restaurantEntity.menus.foods[index].price,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: cGrey,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.15),
                        ),
                      ]),

                  // Text(
                  //   restaurantEntity.menus.drinks[index].name,
                  //   style: TextStyle(
                  //       fontSize: 20.sp, color: CustomColors.darkGrey),
                  // ),
                );
              },
            ),
          ),
          Text(
            'Drinks',
            style: GoogleFonts.poppins(
                fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          ),
          SizedBox(height: 8.w),
          SizedBox(
            height: 160.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: restaurantEntity.menus.drinks.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image.network(
                            restaurantEntity.menus.drinks[index].image,
                            height: 80.w,
                            width: 120.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          restaurantEntity.menus.drinks[index].name,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: cGrey,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.15),
                        ),
                        Text(
                          restaurantEntity.menus.drinks[index].price,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: cGrey,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.15),
                        ),
                      ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
