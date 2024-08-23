import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text('Whatsapp',style: TextStyle(color: Colors.white)),
            bottom: const TabBar(
                tabs: [
                  Tab( child:
                    Icon(Icons.camera_alt),
                  ),

                  Tab( child:
                  Text('Status'),
                  ),

                  Tab( child:
                  Text('Chats'),
                  ),

                  Tab( child:
                  Text('Call'),
                  ),

                ]
            ),
               actions: [
                Icon(Icons.search_sharp),
                SizedBox(width: 10),
                PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (context,) =>const [
                        PopupMenuItem(
                    value: '1',
                    child: Text('New Group'),
                        ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Logout'),
                      ),
          ]
                ),
              ],
            ),
          body:  TabBarView(
              children: [
                Center(child:
                Text('Give permission to access your camera for further action'),),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.green,
                      width: 5
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://s.yimg.com/fz/api/res/1.2/xvVye2lPoj60ZL_bmjjK1Q--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MTk0/https://s.yimg.com/zb/imgv1/f1e927f7-146b-31b5-a39d-fa57f1e937e7/t_500x300'),
                ),
              ),
              title: Text('Walter White'),
              subtitle: Text('35 mins ago',
              ),
           ),
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://s.yimg.com/fz/api/res/1.2/xvVye2lPoj60ZL_bmjjK1Q--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MTk0/https://s.yimg.com/zb/imgv1/f1e927f7-146b-31b5-a39d-fa57f1e937e7/t_500x300'),
                    ),
                    title: Text('Walter White'),
                    subtitle: Text('Call me heisenberg'),
                    trailing: Text('1:21 PM'),
                  );
                }
            ),
            ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index){
    return ListTile(
    leading: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
        ),
      ),
      child: CircleAvatar(
      backgroundImage: NetworkImage('https://s.yimg.com/fz/api/res/1.2/xvVye2lPoj60ZL_bmjjK1Q--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI2MDtxPTgwO3c9MTk0/https://s.yimg.com/zb/imgv1/f1e927f7-146b-31b5-a39d-fa57f1e937e7/t_500x300'),
      ),
    ),
    title: Text('Walter White'),
    subtitle: Text('You missed a call',style: TextStyle(color: Colors.red),),
    trailing: Icon(index /2 ==0 ? Icons.phone : Icons.video_call_outlined),
    );
    }
    ),
              ]
          ),
        ),
    );
  }
}
