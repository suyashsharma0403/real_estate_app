import 'package:flutter/material.dart';
import '../data/house_data.dart';
import '../model/house_model.dart';
import '../widgets/search_widget.dart';
import 'house_detail_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_svg/flutter_svg.dart';

//main loading screen that opens up once the app loads

class HouseList extends StatefulWidget {
  HouseListState createState() => HouseListState();
}

class HouseListState extends State<HouseList> {

  late List<House> houses;
  String query=''; //variable declaraion for the searchbar

  double _locationLat=0.0;// variable declaration to hold coordinates
  double _locationLong=0.0;

  //method to get location coordinates if user permission granted
  getLocation() async {
    final hasPermission = await _handlePermission();

    if (!hasPermission) {
      return null;
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _locationLat = position.latitude;
      _locationLong=position.longitude;
    });
  }
  //method that checks whether user has granted location services permission
  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // do stuff
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // do stuff
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }


  @override
  void initState(){
    getLocation();
    super.initState();

    houses= allHouses;
    houses.sort((a , b) => a.price.compareTo(b.price)); // sort by price lowest to highest

  }
  @override
  Widget build(BuildContext context)=> Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height:50),
            Text(
              '     HOUSE.IO REAL ESTATE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildSearch(), //searchbar widget
            if(houses.length == 0) // diplays "could not find results" image if no data
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Center(
                      child:Image.asset('assets/search_state_empty.png', 
                        height: 150, 
                        fit: BoxFit.fill,),
              ),
                    SizedBox(height:30),
                    Center(
                        child: Text('No results found!\nPerhaps try another search?', textAlign:TextAlign.center, style:TextStyle(fontSize: 14, color: Colors.grey)),
                    ),
                  ]
              )
            else //returns list matching serach bar input
              Expanded(
                child:ListView.builder(
                    itemCount: houses.length,
                    itemBuilder: (context, index){
                      final house = houses[index];
                      return buildHouse(house);
                    }
                )
              )
          ]
      )
  );
  //search bar widget
  Widget buildSearch() => SearchTextField(
      text: query,
      hintText: 'Search for a house',
      onChanged:searchHouse
  );


//list tile for every house in the JSON data
  Widget buildHouse(House house)=> Card(
      child:ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child:Image.network(house.image, height:150, width: 85, fit: BoxFit.fill,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10),
            Text("\$ "+ house.price.toString(), style: TextStyle(fontSize: 16),),
            Text(house.zip + " "+ house.city , style: TextStyle(fontSize: 12, color: Colors.grey)),
            SizedBox(height:20),
          ],
        ),
        subtitle: Row(
          children: [
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
            if(getLocation()==null)
              Text('NA km')
            else
              Text((Geolocator.distanceBetween( _locationLat,_locationLong, house.latitude.toDouble(), house.longitude.toDouble())/1000).toStringAsFixed(2)+"km", style:TextStyle(fontSize:12),)

          ],
        ),
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HouseDetailsScreen(house)));
    },

  )
  );

  //search bar method to filter the listview
  void searchHouse(String query) {
    final houses = allHouses.where((element){
      final zipLower = element.zip.toLowerCase();
      final cityLower =element.city.toLowerCase();
      final searchLower = query.toLowerCase();

      return zipLower.contains(searchLower) || cityLower.contains(searchLower) ;

    }).toList();

    setState(() {
      this.query=query;
      this.houses=houses;
    });
  }

}
