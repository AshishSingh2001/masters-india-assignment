// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masters/logic/gst_details/cubit/gst_details_cubit.dart';
import 'package:masters/models/gst_details.dart';
import 'package:masters/widgets/app_header.dart';
import 'package:masters/widgets/primary_button.dart';

import 'widgets/details_header.dart';

class GstDetailsPage extends StatelessWidget {
  static const routeName = '/gstDetails';
  final GstDetails gstDetails;
  const GstDetailsPage(this.gstDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GstDetailsCubit, GstDetailsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false, 
            backgroundColor: const Color(0xFFF5F5F5),
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const AppHeader(
                    child: DetailsHeader(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          getAddressDetails(
                            context,
                            gstDetails.location,
                            gstDetails.additional,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              getDetailsCard(
                                context,
                                'State Jurisdiction',
                                gstDetails.stateJurisdiction,
                              ),
                              getDetailsCard(
                                context,
                                "Centre Jurisdiction",
                                gstDetails.centreJurisdiction,
                              ),
                              getDetailsCard(
                                context,
                                "Taxpayer Type",
                                gstDetails.taxpayerType
                                    .toString()
                                    .substring(13),
                              ),
                            ],
                          ),
                          getDetailsTile(
                            context,
                            'Condition of buisness',
                            gstDetails.buisnessConstitution,
                          ),
                          getDetailsTile(
                            context,
                            'Date of Registration',
                            gstDetails.registrationDate.toString(),
                          ),
                          PrimaryButton(
                            onPressed: () {},
                            child: const Text(
                              'Get Return Filing Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget getAddressDetails(
      BuildContext context, String location, String additional) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.22,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.location_on,
                    color: Color(0xff2DA05E),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 1,
                    color: Colors.green.shade100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.apartment,
                    color: Color(0xff2DA05E),
                  ),
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          Flexible(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    'Priciple Area of Buisness',
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    child: Text(
                      location,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    'Additional Place of Address',
                    textAlign: TextAlign.left,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    child: Text(
                      additional,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getDetailsCard(BuildContext context, String title, String subtitle) {
    return Expanded(
      child: Card(
        elevation: 2,
        child: Container(
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            // minVerticalPadding: 20,
            title: Text(
              title,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDetailsTile(
    BuildContext context,
    String title,
    String subtitle,
  ) {
    return Card(
      elevation: 2,
      child: Container(
        color: Colors.white,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          // minVerticalPadding: 20,
          title: Text(
            title,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
