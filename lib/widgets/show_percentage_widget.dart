import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/ui/view/task_profile_page.dart';
import 'package:flutter/material.dart';
//import 'package:image_stack/image_stack.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ShowPercentageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> avatarImage = new List();

    avatarImage.add(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDLXsUuNEFtbHzR4-0kJAZljUtATivT4BsLw&usqp=CAU");
    avatarImage
        .add("https://www.toogit.com/uploads/14110/ProfileImage/images.png");
    avatarImage.add(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0sCAvrW1yFi0UYMgTZb113I0SwtW0dpby8Q&usqp=CAU");
    avatarImage.add(
        "https://banner2.cleanpng.com/20180920/yko/kisspng-computer-icons-portable-network-graphics-avatar-ic-5ba3c66df14d32.3051789815374598219884.jpg");

    
    return Column(
          children: [
            Container(
                padding: EdgeInsets.only(left: 30.0, top: 10.0),
                child: Text(
                  'Create additional pages',
                  style: TextStyle(
                      fontSize: 30,
                      color: LightColors.DarkBlue.withOpacity(0.7),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w300),
                )),
            Container(
              padding: EdgeInsets.only(right: 130.0, top: 10.0),
              child: Text('03 days | Dec 18, 2019',
              style: TextStyle(
                  fontSize: 16,
                  color: LightColors.DarkBlue.withOpacity(0.3),
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w500),
            )),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                _imageStacker(context),
                  // ImageStack(
                  //   totalCount: avatarImage.length,
                  //   imageList: avatarImage,
                  //   imageRadius: 45,
                  //   imageCount: 4,
                  //   imageBorderWidth: 2,
                  //   imageBorderColor: LightColors.White,
                  // ),
                  SizedBox(width: 100),
                  CircularPercentIndicator(
                    animation: true,
                    radius: 40.0,
                    percent: 0.85,
                    lineWidth: 3.0,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.deepOrange[50],
                    progressColor: LightColors.Orange.withOpacity(0.6),
                    center: Text(
                      '${(0.85*100).round()}%',
                       style: TextStyle(
                         fontWeight: FontWeight.w700,
                         color: LightColors.Orange
                       ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
  }

}

Widget _imageStacker(BuildContext context) {
  return   InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TaskProfilePage()));
      },
      child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      width: 45,
                      height: 45,
                      child: Stack(children: [
                        Container(
                          child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepOrange[100],
                        backgroundImage: ExactAssetImage('assets/images/avatar4.png'),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ), 
                        )
                        
                      ],)
                     
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 35.0),
                      width: 45,
                      height: 45,
                      child: Stack(children: [
                        Container(
                          child: CircleAvatar(
                        radius: 30,
                        backgroundColor: LightColors.Purple,
                        backgroundImage: ExactAssetImage('assets/images/avatar3.png'),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ), 
                        )
                        
                      ],)
                     
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 60.0),
                      width: 45,
                      height: 45,
                      child: Stack(children: [
                        Container(
                          child: CircleAvatar(
                        radius: 30,
                        backgroundColor: LightColors.LightLavender,
                        backgroundImage: ExactAssetImage('assets/images/avatar2.png'),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ), 
                        )
                        
                      ],)
                     
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 85.0),
                      width: 45,
                      height: 45,
                      child: Stack(children: [
                        Container(
                          child: CircleAvatar(
                        radius: 30,
                        backgroundColor: LightColors.DarkBlue,
                        backgroundImage: ExactAssetImage('assets/images/avatar1.png'),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ), 
                        )
                        
                      ],)
                     
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 110.0),
                      width: 45,
                      height: 45,
                      child: Stack(children: [
                        Container(
                          child: CircleAvatar(
                        radius: 30,
                        backgroundColor: LightColors.White,
                        backgroundImage: ExactAssetImage('assets/images/more.png'),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ), 
                        )
                        
                      ],)
                     
                    ),
                  ],
                ),
  );
                
}