import 'package:flutter/material.dart';
import '../widget/my_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Winai Kankhat";
  String accountemail = "winai249@gmail.com";

  void changeName() {
    setState(() {
      name = "Somchai Jaidee";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Color.fromRGBO(241, 239, 234, 1)),
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset('assets/dark.jpg'),
            Row(
              children: [
                Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ม.ราชภัฏเชียงใหม่ จัดโครงการพัฒนา",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "วันที่ 3 สิงหาคม 2567",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
            Row(
              children: [
                Icon(Icons.favorite),
                Text('41'),
              ],
            ),
            Text(
                "วันที่ 3 สิงหาคม 2567 หลักสูตรนิติศาสตร์ คณะมนุษยศาสตร์และสังคมศาสตร์ มหาวิทยาลัยราชภัฏเชียงใหม่ จัดโครงการพัฒนาศักยภาพทางวิชาการด้านสิทธิมนุษยชน เพื่อสร้างความรู้ความเข้าใจเกี่ยวกับแนวทางปฏิบัติการขอสัญชาติไทยให้แก่กลุ่มนักศึกษาไร้สัญชาติมหาวิทยาลัยราชภัฏเชียงใหม่ ตลอดจนส่งเสริมให้นักศึกษามีความรู้ความเข้าใจเกี่ยวกับสิทธิหน้าที่ตามร่างพระราชบัญญัติชาติพันธุ์ โดยมี รศ.ดร.สัญญา สะสอง คณบดีคณะมนุษยศาสตร์และสังคมศาสตร์ เป็นประธานเปิดโครงการ ภาคเช้ามีการเสวนาเรื่อง ความสำคัญของสิทธิในสัญชาติไทยของกลุ่มนักศึกษาไร้สัญชาติ โดย ผศ.จรินทิพย์ ตรัยตรึงตรีคุณ, ผศ.พินิจนันท์ พรหมารัตน์ , อ.กฤษฎา เอี่ยมละมัย และการเสวนาเรื่อง เปรียบเทียบสิทธิตามรัฐธรรมนูญแห่งราชอาณาจักรไทย กับกลุ่มนักศึกษาไร้สัญชาติ โดย อ.สออน สมุทธวาณิช เธียรพรานนท์, อ.เขมชาติ ตนบุญ, อ.สรชา สุเมธวาณิชย์ มี ผศ.ณฐ นารินทร์ และผ.ศ.อัญนลินต์ กมลนันธกิจ เป็นผู้ดำเนินรายการ และการบรรยายในหัวข้อ”แนวทางปฏิบัติการขอสัญชาติไทย : กรณีศึกษากลุ่มไร้สัญชาติ” โดย นายบุญส่ง แสงกฤช ปลัดอำเภอเมืองเชียงใหม่"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call),
                    Text('Call'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.navigation),
                    Text('Route'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share),
                    Text('Share'),
                  ],
                ),
              ],
            ),
          ],
        ),
        // child: Text('Settings Page', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue.shade800,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue.shade800,
        onTap: (int index) {},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Icon(Icons.call),
                Text('Call'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.navigation),
                Text('Route'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
        // child: Text('Settings Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
