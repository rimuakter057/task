

import 'package:flutter/material.dart';
import 'package:task/app/utils/color/app_colors.dart';
import 'package:task/features/practice/model/model.dart';
import 'package:task/features/practice/service/network_caller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
 ApiModel?apiModel;
  String errorMessage = "";
  String currentIp = "...........";
  Future<void> getData(String ip) async {
    final response = await NetworkCaller.getRequest("https://freeipapi.com/api/json/", ip);
    if (response.isSuccess && response.responseData != null) {
      apiModel = ApiModel.fromJson(response.responseData!);
      debugPrint(response.responseData.toString());
      setState(() {
        errorMessage = "";
        currentIp = ip; // Clear error message when data is found
      });
    } else {
      apiModel = null;
      errorMessage = "Please enter a valid IP";  // Set error message when no data is found
      setState(() {});
      debugPrint(response.errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background container
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Connection",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                     Text(
                      "IP address: $currentIp",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              decoration: const InputDecoration(
                                hintText: "Enter Your IP Address",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                              ),
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  getData(value);
                                  debugPrint(value);
                                }
                              },

                            ),
                          ),
                          Container(
                            width: 60,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.blue, // background color of search icon container
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.search, color: Colors.white, size: 20),
                              onPressed: () {
                                final value = _controller.text.trim();
                                if (value.isNotEmpty) {
                                  print("success");
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Positioned Card
          Positioned(
            top: 230, // Try changing this value if needed
            left: 16,
            right: 16,
           // bottom: 100,
            child: Card(
              color: AppColors.white,
              elevation: 5,
              shadowColor: AppColors.greyShade,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children:  [
                      Text(
                        "Information",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      apiModel !=null?
                      Column(
                        children: [
                          Text("IP Version: ${apiModel?.ipVersion ?? 'no version'}"),
                          Text("Latitude: ${apiModel?.latitude ?? 'no latitude'}"),
                          Text("Longitude: ${apiModel?.longitude ?? 'no longitude'}"),
                          Text("Country Name: ${apiModel?.countryName ?? 'no country'}"),
                          Text("Country Code: ${apiModel?.countryCode ?? 'no code'}"),
                          Text("Time Zone: ${apiModel?.timeZone ?? 'no timezone'}"),
                          Text("Zip Code: ${apiModel?.zipCode ?? 'no zip'}"),
                          Text("City Name: ${apiModel?.cityName ?? 'no city name here'}"),
                          Text("Region Name: ${apiModel?.regionName ?? 'no region'}"),
                          Text("Is Proxy: ${apiModel?.isProxy ?? false}"),
                          Text("Continent: ${apiModel?.continent ?? '-'}"),
                          Text("Continent Code: ${apiModel?.continentCode ?? '-'}"),
                          Text("Language: ${apiModel?.language ?? '-'}"),
                          Text("Currency Code: ${apiModel?.currencyModel.code ?? '-'}"),
                          Text("Currency Name: ${apiModel?.currencyModel.name ?? '-'}"),
                        ],
                      ):
                      Center(
                        child: Text(
                          errorMessage.isNotEmpty ? errorMessage : "no information here yet",
                          textAlign: TextAlign.center,  // Ensures the text is centered
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
