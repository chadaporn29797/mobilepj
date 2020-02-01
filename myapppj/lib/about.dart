import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';


class AboutMePage extends StatefulWidget {
  AboutMePage({Key key}) : super(key: key);

  @override
  AboutMePageState createState() => new AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        backgroundColor: Color(0xff9932CC),
        title: "ทายนิสัยจากกรุ๊ปเลือด",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "มาดูกันซิ กรุ๊ปเลือดแต่ละกรุ๊ปอย่าง A  AB  B O เป็นคนแบบไหนนิสัยยังไงกัน?? Tikker รับประกันคำทำนายทายนิสัยจากกรุ๊ปเลือด ใครได้อ่านเป็นต้องสะดุดเพราะมันแม่นมาก!!",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "asset/images/blood-donation.png",
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff40E0D0),
      ),
    );
    slides.add(
      new Slide(
        title: "คนกรุ๊ปเลือด O",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            " ชอบคุยเรื่องที่ทำให้คุณเป็นจุดเด่นขึ้นมา แต่ไม่ใช่เป็นคนขี้โม้นะ บางทีคุณก็เงียบและเป็นฝ่ายนั่งฟังเหมือนกัน คนเป็นคนฉลาด มีความจำเป็นเยี่ยม แต่จะขี้เกียจไปหน่อยในการอ่านหนังสือ ไม่ค่อยมีความกระตือรือร้น ชอบอ่านหนังสือหรือติวข้อสอบอย่างเอาเป็นเอาตายไม่ได้หลับไม่ได้นอนในช่วงใกล้สอบ ",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        backgroundColor: Color(0xff9932CC),
        pathImage: "asset/images/blood-type.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Color(0xff9932CC),
        title: "คนกรุ๊ปเลือด A",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "เป็นคนที่พูดเก่ง คุยเก่ง เป็นคนชอบพูดมักกว่าชอบฟัง คุณคุยได้ทุกเรื่องขอให้มีคนเปิดประเด็น ไม่ชอบทะเลาะ เกะกะระรานกับใครๆ ก่อน ไม่ชอบไปวุ่นวายกับใคร หากเขาไม่เข้ามาวุ่นวายกับคุณก่อน คุณเป็นคนสุขุมเยือกเย็น เวลาที่คุณไม่พอใจใครคุณจะไม่ค่อยพูด แต่มักใช้สายตาในการทะเลาะมากกว่าการพูดด้วยความโกรธ ",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "asset/images/blood-type (1).png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Color(0xff9932CC),
        title: "คนกรุ๊ปเลือด AB ",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "ไม่ค่อยพูด มักเป็นฝ่ายนั่งฟังคนอื่นพูดมากกว่า จึงทำให้เพื่อนๆ ชอบอุปนิสัยของคุณและมักจะระบายความในใจให้คุณฟังอยู่ประจำ คุณชอบเตรียมวางแผนในเรื่องต่างๆไว้ล่วงหน้าเสมอแต่บางครั้งก็ไม่สามารถทำตามแผนการที่วางแผนไว้ได้หากยึดมั่นตามแผนการเกินไปกลับจะเป็นผลเสียมากกว่าดังนั้นคุณไม่ควรหักโหมจนเกินไปทำเท่าที่คุณสามารถทำได้ ",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "asset/images/blood-type (2).png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Color(0xff9932CC),
        title: "คนกรุ๊ปเลือด B",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            " เป็นคนมีเอกลักษณ์ในการพูด มีความสามารถพิเศษในการเจรจาพูดคุย เวลาพูดชอบออกท่าทางประกอบไปด้วย ทำให้เพื่อนๆ เข้าใจและคล้อยตามไปด้วยดึงดูดความสนใจผู้คนได้ดี คุณเป็นคนคิดใหม่ทำใหม่อยู่เรื่อยๆ มักเปลี่ยนใจได้รวดเร็ว ความขยันมักขึ้นกับอารมณ์ของคุณเพราะคุณมักมีนิสัยที่เปลี่ยนใจง่ายดังนั้นผลการสอบที่ออกมามักขึ้นกับอารมณ์ของคุณตอนช่วงที่ดูตำราก่อนสอบเสมอ",
        styleDescription: TextStyle(
            color: Color(0xfffe9c8f),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "asset/images/blood-type (3).png",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
        appBar: AppBar(
        title: Text("Blood Group"),
        backgroundColor: Colors.redAccent,
      ),body: new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33ffcc5c),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.pink[800],
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    )
    );
    
    
  }
  
}
