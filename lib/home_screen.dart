import 'package:flutter/material.dart';
import 'package:screen_one/screen_two.dart';

import 'image_data.dart';

late int itemCount;
late List<Map<String,String>> data;

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {

    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen>{

//var MyItems=[
 // {'img':'https://images.unsplash.com/photo-1529035669594-2eb2080f1585?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  //{'img':'https://images.unsplash.com/photo-1527842891421-42eec6e703ea?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  //{"img":'https://as2.ftcdn.net/v2/jpg/03/51/54/67/1000_F_351546786_QVhrjc7tNd76K9e6f09zYLzgO3FpoYW4.jpg'},
  //{'img':'https://hips.hearstapps.com/clv.h-cdn.co/assets/18/02/4000x2229/gallery-1515470256-levi-guzman-268866.jpg?resize=1200:*'},
  //{'img':'https://s3-alpha-sig.figma.com/img/66de/e99e/0933ec15fe4accd01110c125b72a02b1?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NR05dxqKuhOGOKfUo7J-A0y2S5OZRM8-vnBY-OsmeXXxdIkoRtg1VMUf-VIN7xkB58nVjaidAnWzSleKZMHVdCgesLxt-rBQaGsD3spmv4lPYoCH6d1mHB1LcsIoQ7yBkOh5PciKuRRKGxY1qcyJv6qqt5aNm3S9MDfB8Era4gnh6rhSZqdgOaHMESVw296HG6ajazgjXl1nccjJce5KZZOJQrf8meQgfZfdfv3qxfCw5XtFnt93iwufAPiIV3mQfumv8IieDooLLRfhsiTMi2CSiIPwXeiGFWrb8bKzXFYwrJCwMmc0xFTDaN8V-bpGJQWOFqLN7Amc-wQMQvHFOw__'},
  //{'img':'https://s3-alpha-sig.figma.com/img/b5c9/9297/2ab1f63e0688f30f6c974cf756072cea?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gHEgIc7met3LC-PE4XbPsvu133a2Z92LLdESMHUOZKa6voTd0VOH6r9jUO5jhG-nrWckP3w6WVFdHDA0dR8alD2Q~0ah8EozFCQPrTqfx8jEtCseSa7Va7uSdGZuLymp8k-4rTDNAJCW6oHejAED~s0P-S8U9Y593QMuszOVBU7qdfPgbQpX00GRzO7J6MEnVfXsfz7FvJYV3VloSO4VLaq1rWuVisxLg-QQM-hRQNkzEoZOs4qSH4okOsQYI849pNpu94yIcuaGaU5DXq21~9yFlzTw90eHvS7-kcPGSwGajeGKDnIwgcsbdDyP44Q~Spa24DStzm45dDt7BHLcbQ__'},
  //{'img':'https://images.unsplash.com/photo-1523224042829-4731dd15a3bb?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  //{'img':'https://s3-alpha-sig.figma.com/img/ee2f/671b/ae1da53eba6aa80eef98a563c436f03e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GujI7KFs21BNQSVkavJ5QvdXLztm-9NBd-02M1jkmf1Jyko0mEK-4k5dssu1hVJFsX2npKVBlJQbydn-1BEn7Oq9fBITeJfwbqBhNrUaNFedLDmlL1YiyAaAALyyBubAzyakQpMpVGea3eknAaeMg0TCNACyssEGjSxbwJDYZZW-qe1dwRXyZLAZe97JmBgvdZoLXrLMQcPtfs5r~UTU7iqyQ0z6zHVSE5dF565YW2JvQsQUtIfvLjk8kcTpPij95baIeP~18YXaO9JG8MEhuafHaQw9hJ22XMNDLVarHXA1F2XiS0VgsmLSiP30hVqCizGvKIJIc6I04ufV84VRtA__'},
//];


//List<String> ItemsName=['mood','nature','dark','light','travel','spring','sky','moon','earth'];

@override
  void initState(){
  data = ImageData.data;
  itemCount=data.length;

    super.initState();


}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Photo Gallery',style: TextStyle(fontFamily: "Poppins",fontSize: 20),),
   leading: Padding(
     padding: EdgeInsets.all(10),
     child: InkWell(
       splashColor: Colors.transparent,
      // onTap: (){},
       child: Container(
         width: 40,
         height: 40,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: const Color(0xFF7ACA5E),
         ),
child: const Center(
child: Icon(
   Icons.arrow_back_ios_new,
  color: Colors.white,
),
)
       ),
     ),
   )
,   actions: const [
     Icon(Icons.more_vert)
   ],
     ),
     body: OrientationBuilder(
       builder: (context,orientation){
         return GridView.builder(
             gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: orientation == Orientation.portrait ? 2:4,  //ternary oparator condition ? truevalue:falsevalue
                 //crossAxisSpacing: 4,
                 childAspectRatio: 1
             ),
             itemCount: itemCount,
             itemBuilder: (context, index){
               return InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InsideScreen(index: index,)));
                 },
                 child:
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                   child: Container(
                      // margin: EdgeInsets.all(15),
                       width: MediaQuery.of(context).size.width,
                       height:180,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           image: DecorationImage(
                               image: NetworkImage(data[index]['Picture']!,
                               ),
                               fit: BoxFit.cover
                           ),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black.withOpacity(0.5),
                             blurStyle: BlurStyle.normal,
                             blurRadius: 35,
                             offset: Offset(0,5)
                           )
                         ]
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child:  Align(
                           alignment: Alignment.bottomLeft,
                           child: Text(data[index]['Name']!
                             ,style: const TextStyle(color: Colors.white,fontSize: 20),
                           ),
                         ),
                       )

                   ),
                 ),

               );

             }
             );
       },
     )
   );
  }

}