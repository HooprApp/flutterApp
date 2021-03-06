import 'package:flutter/material.dart';
import './XDLeaderboard.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/gradient_xd_transform.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLeaderboardPopup extends StatelessWidget {
  XDLeaderboardPopup({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leaderboard Popup')),
      body: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            height: 812.0,
            decoration: BoxDecoration(
              color: const Color(0x80000000),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 280.0),
            child: Container(
              width: 322.0,
              height: 346.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xfff4f4f9),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(132.0, 309.0),
            child:
                // Adobe XD layer: 'raymond' (shape)
                Container(
              width: 111.0,
              height: 111.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xadff8336),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(96.0, 432.0),
            child: Text(
              'Raymond Tran',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 29,
                color: const Color(0xff0b1012),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(303.7, 300.2),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDLeaderboard(),
                ),
              ],
              child: SvgPicture.string(
                _svg_53xti2,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 534.0),
            child: Container(
              width: 260.0,
              height: 55.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                gradient: RadialGradient(
                  center: Alignment(-0.68, 0.55),
                  radius: 2.911,
                  colors: [const Color(0xffff8336), const Color(0xe3801b1b)],
                  stops: [0.0, 1.0],
                  transform: GradientXDTransform(0.012, -1.0, 0.226, 0.003,
                      0.168, 0.405, Alignment(-0.68, 0.55)),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x5eff8336),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(117.0, 546.0),
            child: Text(
              'CHALLENGE',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 26,
                color: const Color(0xfff4f1de),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(156.0, 475.0),
            child: Text(
              '7 BP',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(202.1, 474.5),
            child:
                // Adobe XD layer: 'hooprlogo1' (group)
                SizedBox(
              width: 21.0,
              height: 21.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 21.4, 21.4),
                    size: Size(21.4, 21.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_v0orrn,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 10.4, 21.4, 1.0),
                    size: Size(21.4, 21.4),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_hxbi1o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.9, 0.0, 3.9, 21.3),
                    size: Size(21.4, 21.4),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_bbiq3r,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.6, 14.2, 15.8, 5.4),
                    size: Size(21.4, 21.4),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_pc9vxh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.6, 1.8, 15.8, 5.4),
                    size: Size(21.4, 21.4),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_h0w3n8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.8, 17.8, 1.0, 1.0),
                    size: Size(21.4, 21.4),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_qwvea8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.8, 17.8, 1.0, 1.0),
                    size: Size(21.4, 21.4),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_k1j07i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.8, 17.8, 1.0, 1.0),
                    size: Size(21.4, 21.4),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_k1j07i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_53xti2 =
    '<svg viewBox="303.7 300.2 17.7 17.7" ><path transform="translate(1234.66, 1223.16)" d="M -922.161376953125 -914.1613159179688 L -930.9996337890625 -905.3226318359375 L -922.161376953125 -914.1613159179688 L -930.9996337890625 -922.99951171875 L -922.161376953125 -914.1613159179688 L -913.3226928710938 -923.0004272460938 L -922.161376953125 -914.1613159179688 L -913.3226928710938 -905.3226318359375 L -922.161376953125 -914.1613159179688 Z" fill="none" stroke="#707070" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v0orrn =
    '<svg viewBox="0.0 0.0 21.4 21.4" ><path transform="translate(-5.66, -6.49)" d="M 27.10543823242188 17.21188735961914 C 27.10543823242188 17.32966423034668 27.10543823242188 17.44655799865723 27.09972763061523 17.56345367431641 C 26.99908065795898 20.71223831176758 25.51657676696777 23.65683174133301 23.04706573486328 25.61297035217285 C 22.8056583404541 25.80457496643066 22.55589866638184 25.98591995239258 22.29779243469238 26.15701866149902 C 20.54437637329102 27.31954574584961 18.48651504516602 27.9379768371582 16.38271903991699 27.93461990356445 C 15.87895774841309 27.93461990356445 15.3777961730957 27.89972686767578 14.88087844848633 27.83019256591797 C 14.60453605651855 27.79179191589355 14.33016777038574 27.74242973327637 14.05975532531738 27.682373046875 C 11.47761631011963 27.10864639282227 9.198452949523926 25.60120391845703 7.659963607788086 23.44953155517578 C 7.52226734161377 23.25734519958496 7.39042854309082 23.06061172485352 7.264455795288086 22.85933876037598 C 6.274815559387207 21.26548385620117 5.723331451416016 19.43867492675781 5.665713310241699 17.56345367431641 C 5.661758422851562 17.44655799865723 5.660000801086426 17.32966423034668 5.660000801086426 17.21188735961914 C 5.660000801086426 17.0941162109375 5.660000801086426 16.97722053527832 5.665713310241699 16.86032676696777 C 5.723960876464844 14.97930526733398 6.279203414916992 13.14724540710449 7.274999618530273 11.55037498474121 C 7.30092716217041 11.50642967224121 7.327296257019043 11.4664363861084 7.354103088378906 11.4246883392334 C 7.455178260803223 11.26736259460449 7.560352325439453 11.11282157897949 7.669631958007812 10.96106147766113 C 7.699074745178223 10.91931343078613 7.729395866394043 10.87800407409668 7.760160446166992 10.83669853210449 C 9.398698806762695 8.619295120239258 11.82857799530029 7.118460178375244 14.54491996765137 6.646040439605713 C 14.82704734802246 6.597116947174072 15.11283683776855 6.559615612030029 15.40229415893555 6.533541202545166 C 15.72456359863281 6.504244327545166 16.05137062072754 6.48959493637085 16.38271903991699 6.48959493637085 C 18.48174858093262 6.485669612884521 20.53531074523926 7.100943088531494 22.2863712310791 8.258405685424805 C 22.46918296813965 8.378816604614258 22.64774513244629 8.504646301269531 22.82206344604492 8.635898590087891 C 22.89457321166992 8.690391540527344 22.96664428710938 8.745765686035156 23.037841796875 8.802892684936523 C 23.17450523376465 8.910120010375977 23.30810165405273 9.022623062133789 23.43906021118164 9.136438369750977 C 25.68025398254395 11.09018325805664 27.00717544555664 13.88858795166016 27.10148429870605 16.86032676696777 C 27.10367965698242 16.97722053527832 27.10543823242188 17.0941162109375 27.10543823242188 17.21188735961914 Z" fill="#ff8336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hxbi1o =
    '<svg viewBox="0.0 10.4 21.4 1.0" ><path transform="translate(-5.66, -232.11)" d="M 27.10543823242188 242.8316345214844 C 27.10543823242188 242.9492797851562 27.10543823242188 243.0662231445312 27.09972763061523 243.1830444335938 L 5.665713310241699 243.1830444335938 C 5.661758422851562 243.0662231445312 5.660000801086426 242.9492797851562 5.660000801086426 242.8316345214844 C 5.660000801086426 242.7137451171875 5.660000801086426 242.5968933105469 5.665713310241699 242.47998046875 L 27.09972763061523 242.47998046875 C 27.10367965698242 242.5968933105469 27.10543823242188 242.7137451171875 27.10543823242188 242.8316345214844 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bbiq3r =
    '<svg viewBox="5.9 0.0 3.9 21.3" ><path transform="translate(-133.8, -7.45)" d="M 142.6084442138672 27.77134704589844 C 142.747314453125 28.12290954589844 142.8854370117188 28.46085739135742 143.0228576660156 28.7851676940918 C 142.7444763183594 28.74649810791016 142.4701843261719 28.69713592529297 142.1997680664062 28.63707733154297 C 142.11767578125 28.4407844543457 142.0359497070312 28.23892593383789 141.9545135498047 28.0315055847168 C 141.3392944335938 26.47100257873535 140.6497344970703 24.47542190551758 140.1967010498047 22.3941535949707 C 140.1460418701172 22.16300010681152 140.0987396240234 21.93096733093262 140.0547332763672 21.69805717468262 C 139.8485412597656 20.65022087097168 139.7280426025391 19.58732223510742 139.6944274902344 18.51991653442383 C 139.6913146972656 18.40213584899902 139.6900024414062 18.28524208068848 139.6900024414062 18.1683464050293 C 139.6900024414062 18.05145072937012 139.6900024414062 17.93807411193848 139.6944274902344 17.81678581237793 C 139.727294921875 16.74744987487793 139.85693359375 15.68329429626465 140.08154296875 14.6373119354248 C 140.1284790039062 14.41202354431152 140.1810150146484 14.18027877807617 140.2393035888672 13.94209480285645 C 140.5833892822266 12.52968406677246 141.1257019042969 10.90149879455566 141.9633331298828 9.078634262084961 C 142.2089385986328 8.544252395629883 142.4537048339844 8.049867630004883 142.6861724853516 7.602500438690186 C 142.9683380126953 7.553572177886963 143.2541656494141 7.516072750091553 143.5436248779297 7.490001201629639 C 143.2443542480469 8.039760589599609 142.9191284179688 8.679168701171875 142.5952911376953 9.384937286376953 C 142.0300903320312 10.61540985107422 141.4038696289062 12.19745635986328 140.9644012451172 13.93374633789062 C 140.904052734375 14.16812515258789 140.8479614257812 14.4058666229248 140.796142578125 14.64698600769043 C 140.5637817382812 15.68869972229004 140.4300384521484 16.7499828338623 140.3966369628906 17.81678009033203 C 140.3931427001953 17.93367576599121 140.3918304443359 18.0510082244873 140.3918304443359 18.1683464050293 C 140.3918304443359 18.28568077087402 140.3918304443359 18.39773941040039 140.3966369628906 18.5199089050293 C 140.4177551269531 19.34476661682129 140.5166625976562 20.39902687072754 140.7688751220703 21.69453811645508 C 140.8142700195312 21.92745399475098 140.8647766113281 22.16856956481934 140.9204864501953 22.41788482666016 C 141.2553405761719 23.91336250305176 141.7861938476562 25.6935977935791 142.6084442138672 27.77134704589844 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pc9vxh =
    '<svg viewBox="1.6 14.2 15.8 5.4" ><path transform="translate(-40.59, -316.24)" d="M 57.98130035400391 335.3654479980469 C 57.73989868164062 335.5570373535156 57.49014282226562 335.7384033203125 57.23204040527344 335.9094543457031 C 56.56011199951172 335.7366027832031 55.90227508544922 335.5132751464844 55.26414489746094 335.2409973144531 C 53.15475463867188 334.3282165527344 51.74015045166016 333.3922424316406 50.60327911376953 332.639892578125 C 49.45455169677734 331.8800354003906 48.64374542236328 331.3434143066406 47.71473693847656 331.2138671875 C 47.56915283203125 331.1932678222656 47.42230224609375 331.1831359863281 47.27527618408203 331.1831359863281 C 47.18035125732422 331.1831359863281 47.08557891845703 331.1854858398438 46.99094390869141 331.1901550292969 C 45.65852355957031 331.2566223144531 44.34894561767578 331.7908325195312 43.09516906738281 332.7810363769531 C 42.92758560180664 332.9133605957031 42.76103591918945 333.0537719726562 42.59550476074219 333.2018432617188 C 42.45781707763672 333.0097351074219 42.32599258422852 332.81298828125 42.20000839233398 332.6116333007812 C 42.34970474243164 332.4796752929688 42.50044250488281 332.3536071777344 42.65220642089844 332.2337646484375 C 43.99298858642578 331.1743469238281 45.40187835693359 330.5907287597656 46.84945678710938 330.4940185546875 C 46.99124908447266 330.4846801757812 47.13334655761719 330.4800109863281 47.27571105957031 330.4800109863281 C 47.37356567382812 330.4800109863281 47.46996307373047 330.4834289550781 47.56487274169922 330.4904174804688 C 48.76284027099609 330.578369140625 49.71338653564453 331.2068481445312 50.99264526367188 332.0536804199219 C 52.10620880126953 332.7906494140625 53.49226379394531 333.7077941894531 55.54495239257812 334.5958862304688 C 56.29773712158203 334.9215698242188 57.12436676025391 335.1730346679688 57.98130035400391 335.3654479980469 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h0w3n8 =
    '<svg viewBox="1.6 1.8 15.8 5.4" ><path transform="translate(-40.79, -44.97)" d="M 58.17108917236328 47.28443908691406 C 57.31590270996094 47.47517395019531 56.48883819580078 47.72390747070312 55.73736572265625 48.04908752441406 C 53.68379974365234 48.93460083007812 52.29644012451172 49.85086059570312 51.18198394775391 50.58564758300781 C 49.90095520019531 51.43070983886719 48.94953155517578 52.05825042724609 47.7515869140625 52.14395141601562 C 47.65666198730469 52.15099334716797 47.56027221679688 52.15449523925781 47.46242523193359 52.15449523925781 C 47.32003784179688 52.15449523925781 47.17794036865234 52.14952850341797 47.03614044189453 52.13956451416016 C 45.59034729003906 52.04201507568359 44.18232727050781 51.45576477050781 42.84330749511719 50.39447021484375 C 42.69680023193359 50.27876281738281 42.55237579345703 50.15789794921875 42.40998840332031 50.03193664550781 C 42.4359130859375 49.98799133300781 42.46229553222656 49.94798278808594 42.48909759521484 49.90623474121094 C 42.59017181396484 49.74893188476562 42.69536590576172 49.59437561035156 42.80462646484375 49.442626953125 C 42.96371459960938 49.58499145507812 43.12397003173828 49.72006225585938 43.28538513183594 49.84778594970703 C 44.53784942626953 50.83965301513672 45.84654235839844 51.37577056884766 47.17897033691406 51.44390106201172 C 47.27346801757812 51.44873809814453 47.36837768554688 51.45094299316406 47.46331024169922 51.45137023925781 C 47.61029815673828 51.45131683349609 47.75714874267578 51.44117736816406 47.90274810791016 51.42105102539062 C 48.83177185058594 51.292724609375 49.6434326171875 50.75703430175781 50.79305267333984 49.99896240234375 C 51.93125152587891 49.24793243408203 53.34674072265625 48.31365966796875 55.45744323730469 47.40354156494141 C 56.09445190429688 47.13320922851562 56.75095367431641 46.91139984130859 57.42137145996094 46.73996734619141 C 57.60418701171875 46.86035919189453 57.78275299072266 46.98619842529297 57.95706939697266 47.11745452880859 C 58.02781677246094 47.17194366455078 58.09989166259766 47.22732543945312 58.17108917236328 47.28443908691406 Z" fill="#3d332a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qwvea8 =
    '<svg viewBox="14.8 17.8 1.0 1.0" ><path transform="translate(-327.79, -393.92)" d="M 342.6000061035156 411.7300109863281" fill="none" stroke="#3d332a" stroke-width="16" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_k1j07i =
    '<svg viewBox="14.8 17.8 1.0 1.0" ><path transform="translate(-327.85, -393.68)" d="M 342.6600036621094 411.4800109863281" fill="none" stroke="#3d332a" stroke-width="16" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
