import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // StatelessWidget을 상속받고 싶으면 build Method를 구현해야 한다.
  // build 메소드는 Widget의 UI을 만드는 것이다.
  @override
  Widget build(BuildContext context) {
    // MeaerialApp을 return 하거나, cupertino를 return
    // 이 2가지는 디자인 UI인데, Material은 구글, cupertino는 ios 디자인이다.
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(
              0xFF181818), // 원하는 색상을 사용하고 싶으면 OxFF 뒤에 색상의 RGB값을 적는다.
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selina',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text('Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5,194,482',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: "Transfer",
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: "Request",
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6,428",
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offset: 0,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "9,765",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    offset: -30,
                  ),
                  const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "428",
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    offset: -60,
                  ),
                ],
              ),
            ),
          )),
      // home: Text('Hello World!'), // 이렇게만 하면 Hello World!가 화면 제일 위에 이상하게 뜬다. -> scaffold(화면의 구조)를 가져야 함.
    );
  }
}
