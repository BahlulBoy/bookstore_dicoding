import 'package:bookstore_dicoding/pages/checkout/components/checkout_item.dart';
import 'package:bookstore_dicoding/pages/checkout/components/validation_buy_dialog.dart';
import 'package:bookstore_dicoding/repositories/book_data.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({
    super.key,
    required this.dataList,
  });

  final List<BookPurchased> dataList;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  List<BookPurchased> data = [];
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    if (widget.dataList.isNotEmpty) {
      for (var element in widget.dataList) {
        data.add(element);
        totalPrice += element.price * element.total;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, data);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, data);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF666666),
            ),
          ),
          title: const Text(
            'Checkout',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF666666),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                if (data.isNotEmpty) {
                  var result = await showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) => const AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      content: ValidationBuyDialog(
                        title: 'Are you sure to clean all checkout data?',
                      ),
                    ),
                  );
                  if (result == true) {
                    setState(() {
                      data = [];
                      totalPrice = 0;
                    });
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context, data);
                  }
                }
              },
              icon: Icon(
                Icons.delete_outline,
                color: data.isNotEmpty
                    ? const Color(0xFF666666)
                    : const Color.fromARGB(255, 211, 211, 211),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListView.separated(
                    itemBuilder: (context, index) => CheckoutItem(
                      photo: data[index].photo,
                      title: data[index].name,
                      creator: data[index].createdBy,
                      price: data[index].price,
                      total: data[index].total,
                      add: (value) {
                        setState(() {
                          data[index].total = value + 1;
                          totalPrice += data[index].price;
                        });
                      },
                      remove: (value) async {
                        if (data[index].total > 1) {
                          setState(() {
                            data[index].total = value - 1;
                            totalPrice -= data[index].price;
                          });
                        } else {
                          var result = await showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) => const AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: ValidationBuyDialog(
                                title:
                                    'Are you sure to delete this book from your checkout?',
                              ),
                            ),
                          );
                          if (result == true) {
                            setState(() {
                              totalPrice -=
                                  data[index].price * data[index].total;
                              data.removeAt(index);
                            });
                          }
                        }
                      },
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: data.length,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, -1),
                      blurRadius: 9,
                      spreadRadius: 2,
                      color: Colors.grey[400]!,
                    ),
                  ],
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rp.$totalPrice',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        if (data.isNotEmpty) {
                          var result = await showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) => const AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: ValidationBuyDialog(
                                title: 'Are you sure to buy this book?',
                              ),
                            ),
                          );
                          if (result == true) {
                            setState(() {
                              data = [];
                              totalPrice = 0;
                            });
                            // ignore: use_build_context_synchronously
                            Navigator.pop(context, data);
                          }
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: data.isNotEmpty
                            ? const Color(0xFF3C87CC)
                            : const Color.fromARGB(255, 228, 228, 228),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 0,
                        ),
                        splashFactory: InkRipple.splashFactory,
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
