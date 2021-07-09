import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/support.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int answerIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> answers = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: OutlinedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Support()),
          ),
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Fortune Teller App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 150,
              margin: const EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/falci.png')),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            child: ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent),
              title: const Text(
                'AŞK DURUMU',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            child: ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              title: const Text(
                'PARA DURUMU',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 6;
                });
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            child: ListTile(
              leading: const Icon(
                Icons.explore,
                color: Colors.blue,
              ),
              title: const Text(
                'GÜNLÜK TAVSİYE',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                setState(() {
                  answerIndex = Random().nextInt(5) + 11;
                });
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(.5),
                  offset: const Offset(10, 15),
                  blurRadius: 10,
                ),
              ],
            ),
            margin: const EdgeInsets.all(35),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 150,
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(3),
                child: Center(
                  child: Text(
                    answers[answerIndex],
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
