import 'package:flutter/material.dart';
import 'package:screen_one/image_data.dart';

class InsideScreen extends StatelessWidget{
  int index;
  List<Map<String, String >> data;

  InsideScreen({super.key,required this.index}) : data = ImageData.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(data[index]['Name']!),
        leading: Padding(
         padding: const EdgeInsets.all(10),
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF7ACA5E),
              ),
              child: const Center(
                child: Icon(
                  color: Colors.white,
                  Icons.arrow_back_ios_new
                ),
              ),
            ),
          ),
        )
        ,
        actions: const [
          Icon(Icons.more_vert)
        ],
      ),
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return buildPortraitLayout(context, orientation);
            } else {
              return buildLandscapeLayout(context, orientation);
            }
          }),
    );
  }

  Widget buildPortraitLayout(BuildContext context, Orientation orientation) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
               width: MediaQuery.of(context).size.width * 0.9,
                height: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 30,
                      blurStyle: BlurStyle.normal,
                      offset: const Offset(0,15),
                    )
                  ],
                  image: DecorationImage(
                    image: NetworkImage(data[index]['Picture']!),
                    fit: BoxFit.cover,

                  ),
                ),
              ),
            ],
          ),
           Wrap(
            alignment: WrapAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(style: const TextStyle(fontSize: 24, fontFamily: "Poppins"),
                  data[index]['Header']!,
                ),
              ),
            ],
          ),

           Wrap(
            alignment: WrapAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(data[index]['Description']!,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: "Poppins", letterSpacing: 0.5),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
                  height: 51,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2CAB00),
                      foregroundColor: Colors.white,
                      elevation: 15,
                    ),
                    child: const Text('See More'),
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text('Suggestions',
                  style: TextStyle(
                      color: Color(0xFF2CAB00),
                      fontFamily: "Poppins",
                      fontSize: 20,
                      letterSpacing: 0.5
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomContainer(
                  orientation: orientation,
                  context: context,
                  containerLabel: 'Dawn',
                  containerImage: 'https://s3-alpha-sig.figma.com/img/f4a3/12b8/7bd99804e59439f7e0f27e9f6cf7ebd3?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V-I1c3rojJO7B9tD9r8KJTBO5etbaa7jLh~Lr-YfSIOr~voYabDXsUnZ8UjkUFrZ3ohJ5fO6hG4JCsHwHjA9dPaZbNdynock0q81XjOw2b2YUlyGAYjtmlgPq5kpVnqmFCc~zMYKc-TmXO~WuoxFN3gHx-pNFRUC-uFIypk2yp0c9oJ9RiKZPzjKq6OhXpnYyD9bx3UEBX-jv3ZWx0WD~0HShvynuCCyxWbLe2QSKtxHUSDSoWVhPB7k1RXaMe-VW8HCbFhMZRAJER6dbT3wnyubR6ImhnUlUR4gvCNGMnLWDkJAKLkV8t7qXZSSqPVJChzwoMpHaRleYI9GlTEtOg__'
              ),
              bottomContainer(
                  orientation: orientation,
                  context: context,
                  containerLabel: 'Leaves',
                  containerImage: 'https://s3-alpha-sig.figma.com/img/d3d4/fda7/97dabb9135a808713597e0ce5441ce5f?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FmD2WJMpPr3gqranijI9bwPumYyWD-eCVcAnygGJ5MrpIoR3c46ARWaZWL3wKejDRLjbujeCevgp2QotuHGJkamvDqOTwi6rAmeRJRMKE~yXrBRrSrp7j9aHKXJNN8t9c5HF2CEdD-YJYJuyQzAsgFMwCeYaXfTZj5wuYl2e3F8riHfktEpTzwaAfF6gbPRtfCz7mHSJOixMl6f~vgud00-fw3UDIaYwh~5y8tgDzqjwkskytrW9bfKl5yF1RIB7bpNwOkJ28B5dLBrLTv-klx9X6O05Ex4NRvE8f~vEPngfDg0J0eaBdZMUNCQg9--BlVO8N~4M9fnbicPJG3YtBw__'
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget  buildLandscapeLayout(BuildContext context, Orientation orientation) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 298,
                margin: const EdgeInsets.only(top:15,left: 20),
                decoration: BoxDecoration(
                  image:  DecorationImage(
                      image: NetworkImage(data[index]['Picture']!),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(30),

                ),
              )),

            Expanded(
             child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisSize: MainAxisSize.max,
               children: [
                  Wrap(
                   alignment: WrapAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                       child: Text(data[index]['Header']!,
                         style: const TextStyle(fontSize: 24, fontFamily: "Poppins"),
                       ),
                     ),
                   ],
                 ),

                 Wrap(
                   alignment: WrapAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 30,),
                       child: Text(data[index]['Description']!,
                         style: const TextStyle(
                             fontSize: 20, fontFamily: "Poppins",
                         fontWeight: FontWeight.w400),
                       ),
                     ),
                   ],
                 ),


                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Padding(padding: const EdgeInsets.symmetric(vertical: 15),
                       child: SizedBox(
                         width: MediaQuery
                             .of(context)
                             .size
                             .width * 0.45,
                         height: 51,
                         child: ElevatedButton(
                           onPressed: () {},
                           style: ElevatedButton.styleFrom(
                             backgroundColor: const Color(0xFF2CAB00),
                             foregroundColor: Colors.white,
                             elevation: 15,
                           ),
                           child: const Text('See More'),
                         ),
                       ),
                     )
                   ],
                 ),
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                       child: Text('Suggestions',
                         style: TextStyle(
                             color: Color(0xFF2CAB00),
                             fontFamily: "Poppins",
                             fontSize: 20,
                             letterSpacing: 0.5),),
                     )
                   ],
                 ),

             SizedBox(
               width: MediaQuery.of(context).size.width*0.5,
               height: 180,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 mainAxisSize: MainAxisSize.max,
                 children: [
                   bottomContainer(
                   orientation: orientation,
                   context: context,
                   containerLabel: 'Dawn',
                   containerImage: 'https://s3-alpha-sig.figma.com/img/f4a3/12b8/7bd99804e59439f7e0f27e9f6cf7ebd3?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V-I1c3rojJO7B9tD9r8KJTBO5etbaa7jLh~Lr-YfSIOr~voYabDXsUnZ8UjkUFrZ3ohJ5fO6hG4JCsHwHjA9dPaZbNdynock0q81XjOw2b2YUlyGAYjtmlgPq5kpVnqmFCc~zMYKc-TmXO~WuoxFN3gHx-pNFRUC-uFIypk2yp0c9oJ9RiKZPzjKq6OhXpnYyD9bx3UEBX-jv3ZWx0WD~0HShvynuCCyxWbLe2QSKtxHUSDSoWVhPB7k1RXaMe-VW8HCbFhMZRAJER6dbT3wnyubR6ImhnUlUR4gvCNGMnLWDkJAKLkV8t7qXZSSqPVJChzwoMpHaRleYI9GlTEtOg__'
               ),
               bottomContainer(
                   orientation: orientation,
                   context: context,
                   containerLabel: 'Leaves',
                   containerImage: 'https://s3-alpha-sig.figma.com/img/d3d4/fda7/97dabb9135a808713597e0ce5441ce5f?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FmD2WJMpPr3gqranijI9bwPumYyWD-eCVcAnygGJ5MrpIoR3c46ARWaZWL3wKejDRLjbujeCevgp2QotuHGJkamvDqOTwi6rAmeRJRMKE~yXrBRrSrp7j9aHKXJNN8t9c5HF2CEdD-YJYJuyQzAsgFMwCeYaXfTZj5wuYl2e3F8riHfktEpTzwaAfF6gbPRtfCz7mHSJOixMl6f~vgud00-fw3UDIaYwh~5y8tgDzqjwkskytrW9bfKl5yF1RIB7bpNwOkJ28B5dLBrLTv-klx9X6O05Ex4NRvE8f~vEPngfDg0J0eaBdZMUNCQg9--BlVO8N~4M9fnbicPJG3YtBw__'
               ),
                 ],
               ),
             )

               ],
             )
           )

         ],
       ),
     );

  }

  Widget bottomContainer(
      {required String containerImage, required String containerLabel, required BuildContext context, required Orientation orientation}) =>
      Container(
        width: (orientation == Orientation.portrait) ?
        MediaQuery.of(context).size.width * 0.45
            : MediaQuery.of(context).size.width * 0.22,
        height: 180,
        margin: (orientation == Orientation.portrait) ?
        const EdgeInsets.only(top: 20, bottom: 10) :
        const EdgeInsets.only(bottom: 10),

        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(containerImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurStyle: BlurStyle.normal,
                blurRadius: 30,
                offset: const Offset(0,15), //(position of the shadow(dx/right,dy/downwords)
              )
            ]),

        alignment: Alignment.bottomLeft,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(containerLabel,style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto'),),
        ),
      );



}