import 'package:bookstore_dicoding/pages/checkout/view/checkout_view.dart';
import 'package:bookstore_dicoding/pages/detail_book/view/detail_book_view.dart';
import 'package:bookstore_dicoding/pages/home/components/newest_book_item.dart';
import 'package:bookstore_dicoding/pages/home/components/popular_book_item.dart';
import 'package:bookstore_dicoding/pages/home/components/search_item.dart';
import 'package:bookstore_dicoding/pages/home/repository/home_repository.dart';
import 'package:bookstore_dicoding/repositories/book_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<BookPurchased> checkoutData = [];
  List<Book> searchResult = [];
  String searchWord = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () async {
                      var result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutView(
                            dataList: checkoutData,
                          ),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          checkoutData = result;
                        });
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE9E7E7),
                          ),
                          child: const Icon(Icons.shopping_cart),
                        ),
                        if (checkoutData.isNotEmpty)
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFE9E7E7),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Search your book',
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 15,
                        ),
                        suffixIcon: const Icon(Icons.search),
                      ),
                      onChanged: (value) {
                        RegExp regex =
                            RegExp(r'' + value, caseSensitive: false);
                        setState(() {
                          searchWord = value;
                          if (value.isNotEmpty) {
                            searchResult = ListBook.listBook
                                .where((e) => regex.hasMatch(e.name))
                                .toList();
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (searchWord.isEmpty) ...[
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Books',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          height: 220,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => NewestBookItem(
                              data: HomeRepository.newestBook[index],
                              onTap: () => toDetailBook(
                                  HomeRepository.newestBook[index]),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                              height: 20,
                            ),
                            itemCount: HomeRepository.newestBook.length,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recommended',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => PopularBookItem(
                              data: HomeRepository.popularBook[index],
                              onTap: () => toDetailBook(
                                  HomeRepository.popularBook[index]),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 14,
                            ),
                            itemCount: HomeRepository.popularBook.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ] else ...[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: ListView.separated(
                      itemBuilder: (context, index) => SearchItem(
                        photo: searchResult[index].photo,
                        title: searchResult[index].name,
                        creator: searchResult[index].createdBy,
                        price: searchResult[index].price,
                        total: 0,
                        onTap: () => toDetailBook(searchResult[index]),
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: searchResult.length,
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  void toDetailBook(Book data) async {
    var state = false;
    for (var element in checkoutData) {
      if (element.name == data.name) {
        state = true;
      }
    }
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailBookView(
          isPurcashed: state,
          data: data,
        ),
      ),
    );
    if (!state) {
      if (result != null && result) {
        var dataTemp = BookPurchased(
          photo: data.photo,
          name: data.name,
          createdBy: data.createdBy,
          language: data.language,
          description: data.description,
          price: data.price,
          yearRelease: data.yearRelease,
          page: data.page,
          category: data.category,
          total: 1,
          totalPrice: data.price,
        );
        setState(() {
          checkoutData.add(dataTemp);
        });
      }
    }
  }
}
