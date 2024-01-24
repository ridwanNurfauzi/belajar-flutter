import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // width: double.infinity,
      // height: double.infinity,
      child: Column(children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2021/01/Marvel-Comics.jpg"),
                  fit: BoxFit.cover),
              color: Colors.white),
        ),
        Container(
          width: double.infinity,
          height: 120,
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          decoration: BoxDecoration(
              color: Color(0xFFFFF6F6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xFFC1BABA))),
          child: Row(
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/b5/34/df/b534df05c4b06ebd32159b2f9325d83f.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width - 180,
                child: Container(
                  child: Text(
                      "Marvel Cinematic Universe adalah media waralaba Amerika Serikat dan jagat bersama yang berpusat pada serangkaian film pahlawan super",
                      textAlign: TextAlign.justify),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gallery",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Wrap(children: [
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/id/e/e0/Iron_Man_bleeding_edge.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/en/b/bf/CaptainAmericaHughes.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.wikia.nocookie.net/marveldatabase/images/7/72/Takuya_Yamashiro_%28Earth-51778%29_from_Marvel%27s_616_Promotional.jpg/revision/latest?cb=20210112174150"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10))),
          ]),
        )
      ]),
    );
  }
}
