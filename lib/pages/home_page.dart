import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id="HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search,color: Colors.grey,),
          ),

          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.camera_alt, color: Colors.grey,),
          )
        ],
      ),

      body: ListView(
        children: [
          //#post creat
          Container(
            height: 120,
            color: Colors.black,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [

                Expanded(
                  child: Row(
                    children: [

                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.white24,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What`s on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey,)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      //#live
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live", style: TextStyle(color: Colors.grey[600]),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        width: 1,
                        color: Colors.grey[500],
                      ),

                      //#photo
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo", style: TextStyle(color: Colors.grey[600])),
                          ],
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        width: 1,
                        color: Colors.grey[500],
                      ),

                      //#check in
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in", style: TextStyle(color: Colors.grey[600])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //#post storys
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStorys(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User five",
                ),

                makeStorys(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "User one",
                ),

                makeStorys(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User two",
                ),

                makeStorys(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User thire",
                ),

                makeStorys(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "User four",
                ),

                makeStorys(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User six",
                ),

                makeStorys(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User seven",
                ),
              ],
            ),
          ),

          //#post feed
          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_2.jpeg',
              feedImage_2: 'assets/images/story_4.jpeg'
          ),

          makeFeed(
              userName: 'User Thire',
              userImage: 'assets/images/user_3.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_3.jpeg',
              feedImage_2: 'assets/images/story_4.jpeg',
          ),

          makeFeed(
              userName: 'User Four',
              userImage: 'assets/images/user_4.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_4.jpeg',
              feedImage_2: 'assets/images/story_4.jpeg'
          ),

          makeFeed(
              userName: 'User Five',
              userImage: 'assets/images/user_5.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_5.jpeg',
              feedImage_2: 'assets/images/story_4.jpeg'
          ),

          makeFeed(
              userName: 'User One',
              userImage: 'assets/images/user_1.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_1.jpeg',
            feedImage_2: 'assets/images/story_4.jpeg',
          ),

          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage_1: 'assets/images/story_2.jpeg',
            feedImage_2: 'assets/images/story_4.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeStorys({storyImage, userImage, userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Text(userName,style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage_1, feedImage_2}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //#part1
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(userImage),
                                fit: BoxFit.cover
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),

                        SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 3,),
                            Text(feedTime,style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.more_horiz, color: Colors.grey[600],),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText,style: TextStyle(fontSize: 15,color: Colors.grey[600], height: 1.5, letterSpacing: .7),),
                SizedBox(height: 20,),
              ],
            ),
          ),

          //#photo
          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(feedImage_1),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(feedImage_2),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          //#likes
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("2.5k", style: TextStyle(color: Colors.grey[600],fontSize: 15),)
                  ],
                ),
                Text("400 comment",style: TextStyle(fontSize: 13,color: Colors.grey[600]),),
              ],
            ),
          ),

          SizedBox(height: 10,),

          //#like, comment, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActiv: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),

          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white
        ),
      ),
      child: Center(
        child: Icon(Icons.thumb_up,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors.white
        ),
      ),
      child: Center(
        child: Icon(Icons.favorite,size: 12,color: Colors.white,),
      ),
    );
  }

  Widget makeLikeButton({isActiv}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,color: isActiv? Colors.blue: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("like", style: TextStyle(color: isActiv? Colors.blue: Colors.grey,),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat,color: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("comment", style: TextStyle(color: Colors.grey,),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,color: Colors.grey,size: 18,),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey,),)
          ],
        ),
      ),
    );
  }

}
