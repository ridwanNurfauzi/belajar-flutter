import 'package:flutter/material.dart';

class ListArticle {
  String text;
  String imageURL;

  ListArticle(this.text, this.imageURL);
}

class LatihanListView extends StatelessWidget {
  LatihanListView({super.key});

  var articles = [
    ListArticle(
        "Marvel Cinematic Universe adalah media waralaba Amerika Serikat dan jagat bersama yang berpusat pada serangkaian film pahlawan super",
        "https://i.pinimg.com/736x/b5/34/df/b534df05c4b06ebd32159b2f9325d83f.jpg"),
    ListArticle(
        "'Iron Man' adalah film pahlawan super rilisan tahun 2008 yang berdasarkan pada tokoh Marvel",
        "https://cdn.antaranews.com/cache/1200x800/2012/12/20121225iron_man.jpg"),
    ListArticle(
        "Spider-Man, adalah pahlawan super fiktif dari Marvel Comics yang diciptakan oleh penulis Stan Lee dan artis Steve Ditko.",
        "https://cdn.idntimes.com/content-images/duniaku/post/20220109/supaidaman-2-01c35f78a7caacd29a962f2b71912f60.jpg"),
    ListArticle(
        "Hulk, adalah tokoh pahlawan super fiksi yang ada pada Marvel Comics.",
        "https://cdn.idntimes.com/content-images/post/20200729/3-585321fa2f93327feba30852cfae115c.JPG"),
  ];

  var imgs = [
    "https://i.pinimg.com/736x/b5/34/df/b534df05c4b06ebd32159b2f9325d83f.jpg",
    "https://cdn.antaranews.com/cache/1200x800/2012/12/20121225iron_man.jpg",
    "https://cdn.idntimes.com/content-images/post/20200729/3-585321fa2f93327feba30852cfae115c.JPG",
    "https://cdn.idntimes.com/content-images/duniaku/post/20220109/supaidaman-2-01c35f78a7caacd29a962f2b71912f60.jpg",
    "https://riaurealita.com/assets/berita/original/31491402722-marvel.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4qxt1uNAJP3ZpebaDL3LxTDvUfXC-cbKbHgANWg3AqJ4uRWA4weszwNsbJEBuIy-nn4&usqp=CAU",
    "https://cdn.idntimes.com/content-images/post/20200729/1-45b5e658583e083c5da99dd689fd34be.jpg",
    "https://cdn.idntimes.com/content-images/post/20200729/6-9095679f78e1037bced9107fbc42e999.jpg",
    "https://www.greenscene.co.id/wp-content/uploads/2019/08/Superman-696x497.jpg",
    "https://cdn-brilio-net.akamaized.net/webp/news/2021/11/30/217921/1606062-action-figure-batman-kocak.jpeg",
    "https://i.pinimg.com/736x/77/65/45/7765458bdfb7827e62fa9d08d0f62d5e.jpg",
    "https://cdns.klimg.com/merdeka.com/i/w/news/2021/08/14/1341038/540x270/7-film-superhero-kocak-dan-lucu-hiburan-menarik-saat-santai.jpg",
    "https://assets.yangpentinghepi.com/assets/picture/medium/2021/Oktober/Artikel/Beberapa%20superhero%20suka%20jajan%20di%20pinggir%20jalan%20ini%20bikin%20ngakak/04.jpg",
    "https://cdn1-production-images-kly.akamaized.net/P31Jf6tnmViYO410RKLDsVOtDwU=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3568860/original/010552900_1631414433-SL.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
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
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 200,
            child: ListView.builder(
              itemCount: articles.length,
              // shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
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
                                image: NetworkImage(articles[index].imageURL),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12))),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        width: MediaQuery.of(context).size.width - 170,
                        child: Container(
                          child: SingleChildScrollView(
                            child: Text(articles[index].text,
                                textAlign: TextAlign.justify),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gallery",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
              itemCount: imgs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(imgs[index]), fit: BoxFit.cover)),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
