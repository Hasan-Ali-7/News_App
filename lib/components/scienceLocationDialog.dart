import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubits/scienceCubit/scienceCubit.dart';

scienceLocationDialog (context)=> showDialog(
  context: context, 
  builder: (BuildContext context) => Dialog(
    insetPadding: const EdgeInsets.all(20),
    child: Container(
      padding: const EdgeInsets.all(10.0),
      height: 500,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[0];
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Egypt',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(eg)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[1];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'United Arab Emerties',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(ae)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[2];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saudi Arebia',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(sa)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[3];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'United States',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(us)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[4];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Russia',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(ru)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[5];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'China',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(cn)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[6];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Japan',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(jp)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[7];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'South Korea',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(kr)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[8];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Taiwan',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(tw)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[9];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'India',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(in)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[10];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brazil',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(br)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[11];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Argentina',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(ar)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[12];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Canada',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(ca)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[13];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'United Kingdom',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(uk)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[14];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'France',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(fr)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[15];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Germany',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(de)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[16];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Italy',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(it)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[17];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ireland',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(ie)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Divider( height: 25, thickness: 2,),
            GestureDetector(
              onTap: (){
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocation = 
                BlocProvider.of<ScienceNewsCubit>(context).scienceLocations[18];
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Norway',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                  Text(
                    '(no)',
                    style: TextStyle(
                      fontSize: 20,
                      
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);