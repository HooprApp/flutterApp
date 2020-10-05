import 'package:flutter/material.dart';
import 'package:hoopr/pages/home_page.dart';
import 'package:hoopr/pages/login_signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hoopr/services/authentication.dart';
import 'package:hoopr/pages/root_page.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:hoopr_ui/XDMessageName.dart';
import './XDSignUp.dart';
import 'XDLogin.dart';
import 'XDChallenges1.dart';
import 'XDChallenges2.dart';
import 'XDChallenges3.dart';
import 'XDChallenges4.dart';
import 'XDChallenges41.dart';
import 'XDChallenges42.dart';
import 'XDChallengesPopup.dart';
import 'XDChallengesPopup1.dart';
import 'XDLeaderboard.dart';
import 'XDLeaderboardPopup.dart';
import 'XDUserProfile1.dart';
import 'XDUserProfile2.dart';
import 'XDUserProfile3.dart';
import 'XDUserProfile4.dart';
import 'XDMainPage.dart';
import 'XDMessageName.dart';

import 'challengesdemo.dart';
import 'leaderboarddemo.dart';
import 'profiledemo.dart';
import 'bottombardemo.dart';

//import 'pages/home_page.dart';

// Runs the app, sets up the routes to different pages

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: new RootPage(auth: new Auth()),
    );
  }
}

//below is the bottom navbar

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   //static const TextStyle optionStyle =
//   //    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static List<Widget> _widgetOptions = <Widget>[
//     XDMainPage(),
//     XDLogin(),
//     XDSignUp(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
//       body: Stack(children: <Widget>[
//         Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         Transform.translate(
//           offset: Offset(23.0, 478.0),
//           child: Text(
//             'Welcome to Hoopr!',
//             style: TextStyle(
//               fontFamily: 'Open Sans',
//               fontSize: 24,
//               color: const Color(0xffffffff),
//               fontWeight: FontWeight.w700,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ),
//         Transform.translate(
//           offset: Offset(23.0, 511.0),
//           child: Text(
//             'Meet your ball community.',
//             style: TextStyle(
//               fontFamily: 'Open Sans',
//               fontSize: 14,
//               color: const Color(0xffadadad),
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ),
//         /*
//         Transform.translate(
//           offset: Offset(78.0, 152.0),
//           child:
//               // Adobe XD layer: 'hooprlogo1' (group)
//               SizedBox(
//             width: 222.0,
//             height: 222.0,
//             child: Stack(
//                 children: <Widget>[
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(0.0, 0.0, 222.0, 222.0),
//                   size: Size(222.0, 222.0),
//                   pinLeft: true,
//                   pinRight: true,
//                   pinTop: true,
//                   pinBottom: true,
//                   child: SvgPicture.string(
//                     _svg_zb0lqx,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(0.0, 107.4, 222.0, 7.3),
//                   size: Size(222.0, 222.0),
//                   pinLeft: true,
//                   pinRight: true,
//                   fixedHeight: true,
//                   child: SvgPicture.string(
//                     _svg_ap996i,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(61.0, 0.5, 39.9, 220.4),
//                   size: Size(222.0, 222.0),
//                   pinTop: true,
//                   pinBottom: true,
//                   fixedWidth: true,
//                   child: SvgPicture.string(
//                     _svg_fdlk7p,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(16.6, 147.4, 163.4, 56.2),
//                   size: Size(222.0, 222.0),
//                   pinLeft: true,
//                   pinBottom: true,
//                   fixedWidth: true,
//                   fixedHeight: true,
//                   child: SvgPicture.string(
//                     _svg_d1gge5,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(16.7, 18.3, 163.2, 56.1),
//                   size: Size(222.0, 222.0),
//                   pinLeft: true,
//                   pinTop: true,
//                   fixedWidth: true,
//                   fixedHeight: true,
//                   child: SvgPicture.string(
//                     _svg_prb5aq,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(153.3, 184.4, 1.0, 1.0),
//                   size: Size(222.0, 222.0),
//                   pinBottom: true,
//                   fixedWidth: true,
//                   fixedHeight: true,
//                   child: SvgPicture.string(
//                     _svg_rbv5oy,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(153.3, 184.2, 1.0, 1.0),
//                   size: Size(222.0, 222.0),
//                   pinBottom: true,
//                   fixedWidth: true,
//                   fixedHeight: true,
//                   child: SvgPicture.string(
//                     _svg_m29862,
//                     allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(153.3, 184.2, 1.0, 1.0),
//                   size: Size(222.0, 222.0),
//                     pinBottom: true,
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child: SvgPicture.string(
//                       _svg_m29862,
//                       allowDrawingOutsideViewBox: true,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ],
//                 ),
//           ),
//         ),
//         Transform.translate(
//           offset: Offset(30.0, 571.0),
//           child: PageLink(
//             links: [
//               PageLinkInfo(
//                 transition: LinkTransition.Fade,
//                 ease: Curves.easeOut,
//                 duration: 0.3,
//                 pageBuilder: () => XDSignUp(),
//               ),
//             ],
//             child: Container(
//               width: 331.0,
//               height: 61.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 color: const Color(0xffff8336),
//               ),
//             ),
//           ),
//         ),
//         Transform.translate(
//           offset: Offset(122.0, 588.0),
//           child: Text(
//             'GET STARTED',
//             style: TextStyle(
//               fontFamily: 'Open Sans',
//               fontSize: 20,
//               color: const Color(0xff001331), //0xff001331
//               letterSpacing: 0.4,
//               fontWeight: FontWeight.w700,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ),
//         Transform.translate(
//           offset: Offset(106.0, 642.0),
//           child: PageLink(
//             links: [
//               PageLinkInfo(
//                 transition: LinkTransition.Fade,
//                 ease: Curves.easeOut,
//                 duration: 0.3,
//                 pageBuilder: () => XDLogin(),
//               ),
//             ],
//             child: Text(
//               'Already have an account?',
//               style: TextStyle(
//                 fontFamily: 'Open Sans',
//                 fontSize: 14,
//                 color: const Color(0xffff8336),
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//         ),*/
//       ]),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.blue[900],
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             title: Text('Challenges'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             title: Text('Leaderboard'),
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

const String _svg_zb0lqx =
    '<svg viewBox="0.0 0.0 222.0 222.0" ><path transform="translate(-5.66, -6.48)" d="M 227.6600036621094 117.485221862793 C 227.6600036621094 118.7043914794922 227.6600036621094 119.9144744873047 227.6008605957031 121.1245574951172 C 226.5590057373047 153.7202758789062 211.2123413085938 184.2022857666016 185.6483001708984 204.4518890380859 C 183.1493072509766 206.4353485107422 180.5638427734375 208.3126220703125 177.8919677734375 210.0837707519531 C 159.7408599853516 222.1180877685547 138.4381408691406 228.5199737548828 116.6600189208984 228.4852294921875 C 111.4450988769531 228.4852294921875 106.257194519043 228.1240234375 101.1131286621094 227.4042053222656 C 98.25251007080078 227.0067291259766 95.41230773925781 226.4957122802734 92.61304473876953 225.8739929199219 C 65.88308715820312 219.9348602294922 42.28952026367188 204.3300476074219 26.36332511901855 182.0563049316406 C 24.93790817260742 180.0667877197266 23.57315444946289 178.0302734375 22.26905632019043 175.9467468261719 C 12.02447414398193 159.4473876953125 6.315612316131592 140.5365753173828 5.719143390655518 121.1245880126953 C 5.678196430206299 119.9144897460938 5.659999847412109 118.7043991088867 5.659999847412109 117.485221862793 C 5.659999847412109 116.2660446166992 5.659999847412109 115.0559616088867 5.719139575958252 113.8458862304688 C 6.322137832641602 94.37389373779297 12.06992053985596 75.40870666503906 22.37824630737305 58.87812042236328 C 22.64664077758789 58.4232177734375 22.91958999633789 58.00923919677734 23.19709014892578 57.57706451416016 C 24.24340057373047 55.94845581054688 25.33217239379883 54.34865570068359 26.46340179443359 52.77767944335938 C 26.76819610595703 52.34550476074219 27.08209037780762 51.91788482666016 27.40053176879883 51.49025726318359 C 44.36243438720703 28.53607559204102 69.51622772216797 12.99966716766357 97.63533020019531 8.109272003173828 C 100.5559005737305 7.60280179977417 103.5143966674805 7.214605331420898 106.5107803344726 6.944686889648438 C 109.8468475341797 6.64140796661377 113.2299194335938 6.489768505096436 116.6600036621094 6.489768505096436 C 138.3888244628906 6.449149608612061 159.6469879150391 12.81835651397705 177.7737121582031 24.80021476745605 C 179.6661529541016 26.04669761657715 181.5146331787109 27.34927940368652 183.3191375732422 28.70796775817871 C 184.0697479248047 29.27206802368164 184.8158264160156 29.84526443481445 185.5527954101562 30.4366569519043 C 186.9675750732422 31.54665565490723 188.3505401611328 32.71125030517578 189.7061920166016 33.88948059082031 C 212.9067535400391 54.11433410644531 226.6427917480469 83.08296203613281 227.6190643310547 113.8458862304688 C 227.6418151855469 115.0559616088867 227.6600036621094 116.2660446166992 227.6600036621094 117.485221862793 Z" fill="#ff8336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ap996i =
    '<svg viewBox="0.0 107.4 222.0 7.3" ><path transform="translate(-5.66, -135.11)" d="M 227.6600036621094 246.1193389892578 C 227.6600036621094 247.3385162353516 227.6600036621094 248.548583984375 227.6008605957031 249.7586822509766 L 5.719139575958252 249.7586822509766 C 5.678196430206299 248.548583984375 5.659999847412109 247.3385162353516 5.659999847412109 246.1193237304688 C 5.659999847412109 244.900146484375 5.659999847412109 243.6900482177734 5.719139575958252 242.47998046875 L 227.6008605957031 242.47998046875 C 227.6418151855469 243.6900787353516 227.6600036621094 244.900146484375 227.6600036621094 246.1193389892578 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fdlk7p =
    '<svg viewBox="61.0 0.5 39.9 220.4" ><path transform="translate(-78.72, -7.03)" d="M 169.9011077880859 217.439208984375 C 171.3386383056641 221.0785522460938 172.7686004638672 224.5768737792969 174.1909790039062 227.9341888427734 C 171.3098297119141 227.5338439941406 168.4696350097656 227.0228271484375 165.6703643798828 226.4010925292969 C 164.8211822509766 224.3691253662109 163.9750366210938 222.2795562744141 163.1319274902344 220.1323394775391 C 156.7630767822266 203.9782104492188 149.6253967285156 183.3203582763672 144.9352111816406 161.7754516601562 C 144.4105377197266 159.3825836181641 143.9207458496094 156.9806213378906 143.4658203125 154.5695495605469 C 141.3313140869141 143.7224884033203 140.0837554931641 132.7195434570312 139.7354888916016 121.6699066162109 C 139.7036590576172 120.4507141113281 139.6900024414062 119.2406234741211 139.6900024414062 118.0305404663086 C 139.6900024414062 116.8204574584961 139.6900024414062 115.6467742919922 139.7354888916016 114.3912048339844 C 140.0762634277344 103.3216400146484 141.4176940917969 92.30564880371094 143.7433319091797 81.47783660888672 C 144.2285766601562 79.14566040039062 144.7729644775391 76.74671936035156 145.37646484375 74.28106689453125 C 148.9384918212891 59.65999984741211 154.5521697998047 42.8052864074707 163.2229156494141 23.93528747558594 C 165.7658996582031 18.40348434448242 168.2997894287109 13.28565502166748 170.706298828125 8.65458869934082 C 173.6268768310547 8.148113250732422 176.5853729248047 7.75991678237915 179.5817718505859 7.489999294281006 C 176.4837646484375 13.1810245513916 173.1173858642578 19.80008316040039 169.7646331787109 27.10606384277344 C 163.9143829345703 39.84377288818359 157.4318084716797 56.22082138061523 152.8826293945312 74.19462585449219 C 152.2578735351562 76.62085723876953 151.6770935058594 79.08196258544922 151.1402893066406 81.57794952392578 C 148.7350158691406 92.36161804199219 147.3505096435547 103.3478469848633 147.0050964355469 114.3911590576172 C 146.9687042236328 115.6012649536133 146.9550476074219 116.8158950805664 146.9550476074219 118.0305328369141 C 146.9550476074219 119.2451629638672 146.9550476074219 120.4052047729492 147.0050811767578 121.6698760986328 C 147.2234497070312 130.2086639404297 148.2470092773438 141.1221771240234 150.8582458496094 154.5331420898438 C 151.3283386230469 156.9442138671875 151.8514709472656 159.440185546875 152.4277038574219 162.0210876464844 C 155.8941955566406 177.5019683837891 161.3895874023438 195.9306945800781 169.9011077880859 217.439208984375 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d1gge5 =
    '<svg viewBox="16.6 147.4 163.4 56.2" ><path transform="translate(-25.58, -183.08)" d="M 205.5656127929688 381.05322265625 C 203.0665893554688 383.0366821289062 200.4811401367188 384.9139709472656 197.8092651367188 386.6851196289062 C 190.8538055419922 384.8966369628906 184.0438995361328 382.5836181640625 177.4380493164062 379.7658386230469 C 155.6019592285156 370.3171691894531 140.9581451416016 360.6274108886719 129.1894378662109 352.8392028808594 C 117.2978744506836 344.9736633300781 108.9046478271484 339.4191589355469 99.28766632080078 338.0771179199219 C 97.78057098388672 337.8649291992188 96.26045989990234 337.7584838867188 94.73849487304688 337.7586669921875 C 93.75586700439453 337.7586669921875 92.77475738525391 337.782958984375 91.79517364501953 337.8314514160156 C 78.00204467773438 338.5183715820312 64.44549560546875 344.0502014160156 51.46668243408203 354.2994995117188 C 49.73192596435547 355.6703186035156 48.00778961181641 357.1230163574219 46.29426574707031 358.6576232910156 C 44.86885070800781 356.6680908203125 43.50409698486328 354.631591796875 42.20000457763672 352.5480651855469 C 43.749755859375 351.1802673339844 45.31011962890625 349.8761596679688 46.88111114501953 348.6357421875 C 60.76065826416016 337.6676940917969 75.34532928466797 331.6263732910156 90.33032989501953 330.6255493164062 C 91.79820251464844 330.5285034179688 93.26909637451172 330.47998046875 94.74303436279297 330.47998046875 C 95.75598907470703 330.47998046875 96.75376892089844 330.516357421875 97.73639678955078 330.5891418457031 C 110.137451171875 331.4989929199219 119.9773330688476 338.0043029785156 133.2199859619141 346.7705993652344 C 144.7476043701172 354.3995666503906 159.0957336425781 363.8937072753906 180.3449554443359 373.0875854492188 C 188.1376953125 376.4585266113281 196.6947174072266 379.0606689453125 205.5656127929688 381.05322265625 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_prb5aq =
    '<svg viewBox="16.7 18.3 163.2 56.1" ><path transform="translate(-25.69, -28.42)" d="M 205.5663604736328 52.37641525268555 C 196.7136535644531 54.35076141357422 188.152099609375 56.92559814453125 180.3729858398438 60.29198837280273 C 159.1146697998047 69.45858001708984 144.7529144287109 78.94362640380859 133.2161865234375 86.54985809326172 C 119.9553070068359 95.29792785644531 110.1063385009766 101.7941589355469 97.70527648925781 102.6812515258789 C 96.72265625 102.754035949707 95.72486877441406 102.7904281616211 94.7119140625 102.7904281616211 C 93.23797607421875 102.7904281616211 91.76708984375 102.7388763427734 90.29920959472656 102.6357574462891 C 75.33241271972656 101.625846862793 60.75683212280273 95.55723571777344 46.89548110961914 84.57096099853516 C 45.37908935546875 83.37301635742188 43.88392639160156 82.12198638916016 42.40998840332031 80.81788635253906 C 42.67839050292969 80.36296844482422 42.95133972167969 79.94898986816406 43.22883987426758 79.51682281494141 C 44.27515029907227 77.88821411132812 45.36392211914062 76.28841400146484 46.49515151977539 74.71743011474609 C 48.1419563293457 76.19136810302734 49.80088806152344 77.58948516845703 51.47195816040039 78.91178131103516 C 64.43711853027344 89.17928314208984 77.98457336425781 94.72927856445312 91.77769470214844 95.43440246582031 C 92.75576782226562 95.48445129394531 93.73838806152344 95.50719451904297 94.72102355957031 95.51174163818359 C 96.2427978515625 95.51113891601562 97.76275634765625 95.40625 99.27020263671875 95.19783782958984 C 108.8871612548828 93.86948394775391 117.2895050048828 88.32403564453125 129.1901550292969 80.47669982910156 C 140.9725341796875 72.7021484375 155.6254272460938 63.03059387207031 177.4751586914062 53.60923767089844 C 184.0693817138672 50.81098556518555 190.8654479980469 48.51470565795898 197.8054809570312 46.73995971679688 C 199.6979217529297 47.98645782470703 201.5464019775391 49.28903961181641 203.3509063720703 50.64772796630859 C 204.0833129882812 51.21182250976562 204.8293762207031 51.7850227355957 205.5663604736328 52.37641525268555 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rbv5oy =
    '<svg viewBox="153.3 184.4 1.0 1.0" ><path transform="translate(-189.32, -227.37)" d="M 342.6000061035156 411.7300109863281" fill="none" stroke="#3d332a" stroke-width="16" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m29862 =
    '<svg viewBox="153.3 184.2 1.0 1.0" ><path transform="translate(-189.35, -227.23)" d="M 342.6600036621094 411.4800109863281" fill="none" stroke="#3d332a" stroke-width="16" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
