import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FASHOPS.CO',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color.fromRGBO(252, 127, 139, 1),
        ),
        textTheme: TextTheme(
          displaySmall: GoogleFonts.mulish(
            textStyle: const TextStyle(fontSize: 45.0, color: Colors.orange),
          ),
          labelLarge: GoogleFonts.mulish(),
          bodySmall: GoogleFonts.mulish(
            textStyle: TextStyle(fontSize: 12.0, color: Colors.deepPurple[300]),
          ),
          displayLarge: GoogleFonts.mulish(),
          displayMedium: GoogleFonts.mulish(),
          headlineMedium: GoogleFonts.mulish(),
          headlineSmall: GoogleFonts.mulish(),
          titleLarge: GoogleFonts.mulish(),
          titleMedium: GoogleFonts.mulish(),
          bodyLarge: GoogleFonts.mulish(),
          bodyMedium: GoogleFonts.mulish(),
          titleSmall: GoogleFonts.mulish(),
          labelSmall: GoogleFonts.mulish(),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
          secondary: Colors.orange,
        ),
      ),
      initialRoute: OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        DashboardScreen.routeName: (context) => const DashboardScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'logo.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Judul
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Please, Log In.",
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(179, 0, 0, 0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Form Login
                    Container(
                      child: Column(
                        children: [
                          // Input Email
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email, color: Colors.grey),
                              labelText: 'Email Address',
                              labelStyle: GoogleFonts.mulish(
                                textStyle: const TextStyle(color: Colors.grey),
                              ),
                              filled: true,
                              fillColor: Colors.grey[350],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Input Password
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                              labelText: 'Password',
                              labelStyle: GoogleFonts.mulish(
                                textStyle: const TextStyle(color: Colors.grey),
                              ),
                              filled: true,
                              fillColor: Colors.grey[350],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 30),
                          // Tombol Login
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromRGBO(252, 127, 139, 1),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 100,
                                vertical: 18,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            child: Text(
                              "Continue",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        // nanti aja, aku lelah ya Tuhan..
                      },
                      child: Text(
                        "Create an Account",
                        style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fashops.co',
          style: TextStyle(color: Colors.white), // Teks putih agar kontras
        ),
        backgroundColor: const Color.fromRGBO(252, 127, 139, 1), // Warna utama
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app, color: Colors.white), // Ikon logout
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login'); // Arahkan ke halaman login
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              print('Search button tapped');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.white),
            onPressed: () {
              print('Filter button tapped');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75,
          children: [
            _ProductCard(
              title: 'Unisex Baggy Jeans',
              image: Image.asset('assets/baggyjeans.png'),
              imagePath: 'assets/baggyjeans.png',
              price: 'Rp 179.000',
            ),
            _ProductCard(
              title: "Women's Knit Cardigan",
              image: Image.asset('cardigan.png'),
              imagePath: 'cardigan.png',
              price: 'Rp 309.500',
            ),
            _ProductCard(
              title: "Women's Croptop NAVY",
              image: Image.asset('croptop.png'),
              imagePath: 'croptop.png',
              price: 'Rp 75.000',
            ),
            _ProductCard(
              title: 'Louboutin High Heels',
              image: Image.asset('heels.png'),
              imagePath: 'heels.png',
              price: 'Rp 7.770.000',
            ),
            _ProductCard(
              title: 'Leather Jacket',
              image: Image.asset('leatherjacket.png'),
              imagePath: 'leatherjacket.png',
              price: 'Rp 450.000',
            ),
            _ProductCard(
              title: "Women's Slim Long Dress",
              image: Image.asset('longdress.png'),
              imagePath: 'longdress.png',
              price: 'Rp 800.000',
            ),
            _ProductCard(
              title: "Men's Slim Fit Polo",
              image: Image.asset('polo.png'),
              imagePath: 'polo.png',
              price: 'Rp 300.000',
            ),
            _ProductCard(
              title: "Men's Varsity",
              image: Image.asset('varsity.png'),
              imagePath: 'varsity.png',
              price: 'Rp 1.200.000',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Warna utama
        selectedItemColor: const Color.fromRGBO(252, 127, 139, 1), // Warna ikon/tab yang dipilih
        unselectedItemColor: const Color.fromARGB(255, 177, 177, 177).withOpacity(0.7), // Warna ikon/tab tidak dipilih
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          print('Navigasi ke tab $index');
        },
      ),
    );
  }
}


class DetailPage extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final String material;
  final String size;
  final int stock;

  const DetailPage({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.material,
    required this.size,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Product Details',
        style: TextStyle(color: Colors.white), // Teks putih agar kontras
        ),
        backgroundColor: const Color.fromRGBO(252, 127, 139, 1), // Warna utama
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), // Sudut melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Bayangan lembut
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(252, 127, 139, 1), // Warna utama
              ),
            ),
            const SizedBox(height: 8),
            Text(
              price,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(254, 197, 208, 1), // Warna sekunder
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.check_circle, color: Color.fromRGBO(252, 127, 139, 1)),
                const SizedBox(width: 8),
                Text(
                  'Material: $material',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.format_size, color: Color.fromRGBO(252, 127, 139, 1)),
                const SizedBox(width: 8),
                Text(
                  'Size: $size',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.inventory, color: Color.fromRGBO(252, 127, 139, 1)),
                const SizedBox(width: 8),
                Text(
                  'Stock: $stock',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color.fromRGBO(254, 197, 208, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text(
                      'Save to Cart',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color.fromRGBO(252, 127, 139, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.shopping_bag),
                    label: const Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String title;
  final Widget image;
  final String imagePath;
  final String price;

  const _ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              price: price,
              imagePath: imagePath,
              material: 'Knit 100%', 
              size: 'S, M, L, XL', 
              stock: 50, 
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: image,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final _pageController = PageController();
  final _totalPages = 3;

  void _goToNextPage() {
    if (_currentPage < _totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  void _skipToLogin() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildPage(
                    animation: 'purchase.json',
                    title: 'Purchase Online !!',
                    description:
                        'Shop your faves in just a few clicks. Easy, fast, and all from home!',
                  ),
                  _buildPage(
                    animation: 'tracker.json',
                    title: 'Track Order !!',
                    description:
                        'Stay updated on your order status. Know exactly when it’s on the way, from us to you!',
                  ),
                  _buildPage(
                    animation: 'order.json',
                    title: 'Get Your Order !!',
                    description:
                        'Almost there! Once your order’s ready, just pick it up and enjoy your new item!',
                  ),
                ],
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({
    required String animation,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: Lottie.asset(animation),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mulish',
              color: Color.fromRGBO(252, 127, 139, 1), // Warna utama
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              fontFamily: 'Mulish',
              color: Color.fromARGB(255, 0, 0, 0), // Warna teks hitam
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          // Indikator halaman
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _totalPages,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 16 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? Color.fromRGBO(252, 127, 139, 1) // Warna utama
                      : CupertinoColors.inactiveGray,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Tombol Skip & Continue/Get Started
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                onPressed: _skipToLogin,
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    color: Color.fromRGBO(252, 127, 139, 1), // Warna utama
                  ),
                ),
              ),
              CupertinoButton(
                onPressed: _goToNextPage,
                child: Text(
                  _currentPage == _totalPages - 1
                      ? 'Get Started!'
                      : 'Continue',
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    color: Color.fromRGBO(252, 127, 139, 1), // Warna utama
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
