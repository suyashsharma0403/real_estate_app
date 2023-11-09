import 'package:flutter/material.dart';
import '../model/house_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/google_maps_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

// navigation screen that sends user to the house specific page

class HouseDetailsScreen extends StatelessWidget{

  final House house;
  HouseDetailsScreen(this.house);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          title: Text(""),

        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Image at the top
              Image.network(house.image, height: 250,fit:BoxFit.fill),
              SizedBox(height: 30),
              Row(

                children: [
                  SizedBox(width:15),
                  Text("\$"+house.price.toString(),  style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color:Colors.black)),
                  SizedBox(width:90),
                  SvgPicture.asset('icons/ic_bed.svg',width: 15,),
                  SizedBox(width:5,),
                  Text(house.bedrooms.toString(), style:TextStyle(fontSize: 12,color:Colors.grey)),
                  SizedBox(width: 30,),
                  SvgPicture.asset('icons/ic_bath.svg',width: 15),
                  SizedBox(width:5,),
                  Text(house.bathrooms.toString(), style:TextStyle(fontSize: 12,color:Colors.grey)),
                  SizedBox(width: 30,),
                  SvgPicture.asset('icons/ic_layers.svg',width: 15),
                  SizedBox(width:5,),
                  Text(house.size.toString(), style:TextStyle(fontSize: 12,color:Colors.grey)),
                  SizedBox(width: 30,),
                  SvgPicture.asset('icons/ic_location.svg',width: 15),
                  SizedBox(width:5,),
                ],
              ),
              SizedBox(height: 10,),
              Text("   Description", style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color:Colors.black)),
              Padding(
                  padding: EdgeInsets.only(left:17.0,top: 10),
                  child: Text(
                    house.description,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  )
              ),
              SizedBox(height: 20),
              Text("   Location", style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color:Colors.black)),
              SizedBox(height: 20,),
              //Container(
              SizedBox(
                  height:150,
                  width: 150,
                  child:Center(
                    child:GoogleMapWithMarker(
                    initialPosition: LatLng(house.latitude.toDouble(),house.longitude.toDouble()),
                    markers: {
                      Marker(
                        markerId: MarkerId('marker_1'),
                        position: LatLng(house.latitude.toDouble(),house.longitude.toDouble()),
                      )
                    },
                  )
              )
              )


            ]
        )
    );
  }
}