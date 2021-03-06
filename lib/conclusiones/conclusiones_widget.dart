import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionesWidget extends StatefulWidget {
  const ConclusionesWidget({Key key}) : super(key: key);

  @override
  _ConclusionesWidgetState createState() => _ConclusionesWidgetState();
}

class _ConclusionesWidgetState extends State<ConclusionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0063F1),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Pagina Conclusiones',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          'https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/imagenesflutter/main/jugador7.jpg',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 20, 0, 0),
                            child: Text(
                              'App Futbol',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 16, 12, 0),
                          child: Text(
                            'El f??tbol es un deporte jugado en un campo rectangular con dos porter??as entre dos equipos de once jugadores cada uno con una pelota esf??rica, la cual debe ser pateada. Es el m??s practicado y m??s popular entre los espectadores, con un seguimiento de unos 4 mil millones de aficionados. El t??rmino proviene del ingl??s football (pie y pelota), por lo que tambi??n se le conoce como balompi??. Los juegos de f??tbol tambi??n pueden disputarse entre equipos de un mismo pa??s (competiciones nacionales de clubes, como en el f??tbol mexicano, se tiene la Liga Mexicana de F??tbol), entre equipos de distintos pa??ses (competiciones internacionales de clubes o selecciones nacionales) como en el Mundial de F??tbol. Hay registros de juegos similares practicados en Jap??n, China, Grecia y Roma. Su historia moderna es de casi 150 a??os, hacia 1863, cuando Inglaterra hizo la separaci??n del Rugby-Football y de la Asociaci??n de Football y se cre?? la Football Association.\n\nExisten registros de la dinast??a Han en China durante el a??o 200 a.C., de un juego llamado tsu chu, el cual consist??a en dar patadas a una bola hecha de cuero, siendo este juego muy grato para los emperadores chinos. Por otro lado, el epicurus y el harpastum fueron algunos de los juegos que surgieron en Grecia y Roma, jugados con pies y manos.\n\nDurante el medioevo surgieron varios tipos practicados entre regiones. Participaban muchos jugadores y las porter??as estaban ubicadas a m??s de un kil??metro la una de la otra.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
