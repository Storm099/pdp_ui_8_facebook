import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,size: 30,)),
          //
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.grey,size: 30,)),
          const SizedBox(width: 6,),
        ],
      ),

      body: ListView(
        children: [

          //#create post
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 120,
            child: SizedBox(
              height: 60,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/my2.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(color: Colors.grey.shade600,width: 1,style: BorderStyle.solid)
                            //color: Colors.white
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey.shade600),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.video_call,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Live",style: TextStyle(color: Colors.grey,fontSize: 16),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.photo,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo",style: TextStyle(color: Colors.grey,fontSize: 16),)
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in",style: TextStyle(color: Colors.grey,fontSize: 16),)
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
           Container(
             height: 10,
             color: Colors.grey.shade800,
           ),
          //#stories
          SizedBox(
            //color: Colors.green,
            height: 220,
            child: ListView(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [

                _widgetStory(
                  img_profile: "assets/images/my2.jpg",
                  img_story: "assets/images/my3.jpg",
                  name: "Yorqin Abrayev"
                ),

                const SizedBox(width: 15,),
                _widgetStory(
                    img_profile: "assets/images/user_1.jpeg",
                    img_story: "assets/images/story_1.jpeg",
                    name: "User 1"
                ),
                const SizedBox(width: 15,),
                _widgetStory(
                    img_profile: "assets/images/user_2.jpeg",
                    img_story: "assets/images/story_2.jpeg",
                    name: "User 2"
                ),

                const SizedBox(width: 15,),
                _widgetStory(
                    img_profile: "assets/images/user_3.jpeg",
                    img_story: "assets/images/story_3.jpeg",
                    name: "User 3"
                ),

                const SizedBox(width: 15,),
                _widgetStory(
                    img_profile: "assets/images/user_4.jpeg",
                    img_story: "assets/images/story_4.jpeg",
                    name: "User 4"
                ),

                const SizedBox(width: 15,),
                _widgetStory(
                    img_profile: "assets/images/user_5.jpeg",
                    img_story: "assets/images/story_5.jpeg",
                    name: "User 5"
                ),
              ],
            ),
          ),

          Container(
            height: 10,
            color: Colors.grey.shade800,
          ),
          //post
          _widgetPost(
            name: "Yorqin Abrayev",
            img: "assets/images/my2.jpg",
            time: "1 hour ago",
            txt: "All the Lorem ipsum generators on Internet tend to repeat predefined.",
            img1: "assets/images/story_4.jpeg",
            img2: "assets/images/my2.jpg",
          ),

          const SizedBox(height: 10,),

          _widgetPost(
            name: "User one",
            img: "assets/images/user_1.jpeg",
            time: "34 minutes ago",
            txt: "All the Lorem ipsum generators on Internet tend to repeat predefined.",
            img1: "assets/images/story_1.jpeg",
            img2: "assets/images/story_2.jpeg",
          ),

          _widgetPost(
            name: "User two",
            img: "assets/images/user_2.jpeg",
            time: "2 hour ago",
            txt: "All the Lorem ipsum generators on Internet tend to repeat predefined.",
            img1: "assets/images/story_4.jpeg",
            img2: "assets/images/story_5.jpeg",
          ),

          _widgetPost(
            name: "User three",
            img: "assets/images/user_4.jpeg",
            time: "1 hour ago",
            txt: "All the Lorem ipsum generators on Internet tend to repeat predefined.",
            img1: "assets/images/story_1.jpeg",
            img2: "assets/images/story_2.jpeg",
          ),

          _widgetPost(
            name: "User four",
            img: "assets/images/user_3.jpeg",
            time: "1 hour ago",
            txt: "All the Lorem ipsum generators on Internet tend to repeat predefined.",
            img1: "assets/images/story_3.jpeg",
            img2: "assets/images/story_5.jpeg",
          )


        ],
      ),

    );
  }

  Widget _widgetStory({img_profile,img_story,name}){
    return  AspectRatio(
      aspectRatio: 1.5/2.2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img_story),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10,top: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,width: 2),
                  image: DecorationImage(
                    image: AssetImage(img_profile),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10,left: 10),
                child: Text(name,style: const TextStyle(color: Colors.white,fontSize: 18),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetPost({img,name,time,txt,img1,img2}){
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Row(
            children: [

              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(name,style: const TextStyle(color: Colors.white70,fontSize: 24),),
                    const SizedBox(height: 5,),
                    Text(time,style: const TextStyle(color: Colors.grey,fontSize: 16),),
                  ],
                ),
              ),

              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.more_horiz,size: 28,color: Colors.grey,),
              )

            ],
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(txt,style: const TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.w400),),
        ),
        SizedBox(
          height: 240,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Image(
                  height: double.infinity,
                  width: double.infinity,
                  image: AssetImage(img1),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  height: double.infinity,
                  width: double.infinity,
                  image: AssetImage(img2),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _widgetLike(),
                  Transform.translate(
                    offset: const Offset(-8, 0),
                    child: _widgetLove(),
                  ),
                  const SizedBox(width: 4,),
                  const Text("3.6k",style: TextStyle(color: Colors.grey,fontSize: 16),)
                ],
              ),
              const Text("123 comments",style: TextStyle(color: Colors.grey,fontSize: 15),)
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.thumb_up,size: 17,color: Colors.blue,),
                    SizedBox(width: 5),
                    Text("Like",style: TextStyle(color: Colors.grey,fontSize: 17),)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.message,size: 17,color: Colors.white,),
                    SizedBox(width: 5),
                    Text("Comment",style: TextStyle(color: Colors.grey,fontSize: 17),)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.share_outlined,size: 17,color: Colors.white,),
                    SizedBox(width: 5),
                    Text("Send",style: TextStyle(color: Colors.grey,fontSize: 17),)
                  ],
                ),
              ),
            ],
          ),
        )


      ],
    );
  }

Widget _widgetLike(){
    return Container(
      height: 30,
      width: 30,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: Colors.white,width: 0.5)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up,color: Colors.white,size: 15,),
      ),
    );
}
Widget _widgetLove(){
    return  Container(
      height: 30,
      width: 30,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
          border: Border.all(color: Colors.white,width: 0.5)
      ),
      child: const Center(
        child: Icon(Icons.favorite,color: Colors.white,size: 15,),
      ),
    );
}

}
