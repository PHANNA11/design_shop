import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: NetworkImage(
                              'https://scontent.fpnh18-3.fna.fbcdn.net/v/t39.30808-6/440867515_410596848427812_90269047210920355_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEmjcG81Zjv3N3PSoMzobp4nFTRCz2Mx3OcVNELPYzHczyY1LZIwjyNa-v821nn-iKWGGiie8LDIeXnxENxwljv&_nc_ohc=bSTMl5on1c4Q7kNvgHaRk_e&_nc_zt=23&_nc_ht=scontent.fpnh18-3.fna&oh=00_AfCZUV571bAKcLGFb-tWa16eEfLE6ZNzm_E99DZNljrbBQ&oe=66336D41'),
                        ),
                        title: Text(
                          'Mr. Jing Jang',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Animation'),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                'data1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'data2',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'data3',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'data4',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                '5341',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '22452',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '7653',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '76764',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildIcon(
                      name: 'Wallet', icons: Icons.currency_exchange_sharp),
                  _buildIcon(name: 'Delivery', icons: Icons.delivery_dining),
                  _buildIcon(name: 'Service', icons: Icons.chat),
                  _buildIcon(),
                  _buildIcon(),
                ],
              ),
            ),
            _buildSettingMenu(
              title: 'Address',
              subTitle: 'show your address location',
            ),
            _buildSettingMenu(
                title: 'Privacy',
                colors: Colors.cyanAccent,
                subTitle: 'Encryp your personal data'),
            _buildSettingMenu(),
            _buildSettingMenu(),
            _buildSettingMenu(),
            _buildSettingMenu(),
            _buildSettingMenu(),
            _buildSettingMenu(),
          ],
        ),
      )),
    );
  }

  Widget _buildIcon({String? name, IconData? icons}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        width: 80,
        child: Column(children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 217, 216, 216)),
            child: Center(
              child: Icon(
                icons ?? Icons.favorite,
                size: 30,
              ),
            ),
          ),
          Text(name ?? 'favorite')
        ]),
      ),
    );
  }

  Widget _buildSettingMenu(
      {String? title, String? subTitle, IconData? icons, Color? colors}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: colors,
                  maxRadius: 30,
                  child: Center(
                      child: Icon(
                    icons ?? Icons.location_on,
                    size: 30,
                  )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? 'Title',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          subTitle ?? 'sub-title',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
