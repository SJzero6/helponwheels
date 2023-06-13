import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helponwheels/screens/home.dart';
import 'package:helponwheels/screens/profile.dart';

class Route_map extends StatefulWidget {
  const Route_map({super.key});

  @override
  State<Route_map> createState() => _Route_mapState();
}

class _Route_mapState extends State<Route_map> {

  static const LatLng SourceLocation = LatLng(10.039442276418884, 76.31206447946413 );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold (
        drawer: _Drawer(),
        body: Container(
          margin: const EdgeInsets.only(left: 10,right: 10,bottom:10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.close,),color: Colors.red,),
                          Image.asset('assets/logo-removebg-preview.png',width: 90,height: 90,)
                        
                      ],
                    ),
                  ),

                  SearchBox(),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 5,right: 5),
                      //child: GoogleMap(initialCameraPosition: CameraPosition(target: SourceLocation)),
                    ),
                  )
            ],
        
          ),
        )
        
      ),
    );
  }
  Drawer _Drawer() {
    return Drawer(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child:ListView(
          children: [
           DrawerHeader(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              
              color: Colors.red
            ),
            child: Column(
              children: [
                Column(
                children: [
                   const SizedBox(height: 10,),
                CircleAvatar(
                  maxRadius: 31,
                  backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                ),
                const SizedBox(height: 10,),
                      Text("Profile Name",style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),),
                      const SizedBox(height: 10,),
                      Text("user@gmail.com",style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 18,color: Color.fromARGB(255, 217, 216, 216))),),
                     
                ],
           ),
              ],
            )),
            ListTile(leading: Icon(Icons.home),
                    title: Text('Home',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                  ),
                  ListTile(leading: Icon(Icons.person),
                    title: Text('Profile',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage(),));
                      
                    },
                  ),ListTile(leading: Icon(Icons.history),
                    title: Text('History',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){},
                  ),ListTile(leading: Icon(Icons.safety_check_rounded),
                    title: Text('My Booking',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){},
                  ),SizedBox(height: 200,),
                  ElevatedButton(onPressed: (){},
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [Icon(Icons.logout),
                       Text('Logout',style: GoogleFonts.albertSans(textStyle: TextStyle()),),
                     ],
                   ), 
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                   
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),)
          ],
        ),

      );
  }
   Widget SearchBox() {
    return Container(
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(179, 208, 199, 199),
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        enabled: null,
       // controller: _searchcontroller,
        decoration: InputDecoration(border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,),
          borderRadius: BorderRadius.circular(15)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close,color: Colors.red,),
             
              onPressed: () async {
                
              },
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.red,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'search',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }

}