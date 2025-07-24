import 'package:atmospark_task/models/ground_model.dart';
import 'package:atmospark_task/utils/custom_toast.dart';
import 'package:atmospark_task/utils/utilities.dart';
import 'package:atmospark_task/widgets/book_button.dart';
import 'package:atmospark_task/widgets/booking_detail.dart';
import 'package:atmospark_task/widgets/ground_slot_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GroundBookingView extends StatefulWidget {
  final Ground ground;
  const GroundBookingView({super.key, required this.ground});

  @override
  State<GroundBookingView> createState() => _GroundBookingViewState();
}

class _GroundBookingViewState extends State<GroundBookingView> {
  DateTime? selectedDate;
  int? selectedSlotIndex;

  void _selectDate(BuildContext context) async {
    final picked = await selectDateFromPicker(context);
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        centerTitle: true,
        title: Text('Book Your Slot', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Color(0xffF2F5EC),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.ground.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                widget.ground.name,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              widget.ground.location,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFbfe2b9),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Text(
                                '₹${widget.ground.pricePerHour} / hour',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Text(
                    'Select Date',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Card(
                      color: Color(0xffF2F5EC),
                      child: SizedBox(
                        height: 100,
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFbfe2b9),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Icon(Icons.calendar_today, size: 30),
                            ),
                            title: Text(
                              selectedDate == null
                                  ? 'Choose Date'
                                  : 'Selected Date',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 13.0,
                              ),
                            ),
                            subtitle: Text(
                              selectedDate == null
                                  ? 'Tap to select a date'
                                  : DateFormat.yMMMMd().format(selectedDate!),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Text(
                    'Select Time Slot',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                GroundSlotTime(
                  crossAxisCount: 2,
                  itemCount: widget.ground.availableSlots.length,
                  timeSlots: widget.ground.availableSlots,
                  selectedIndex: selectedSlotIndex,
                  onTap: (index) {
                    setState(() {
                      selectedSlotIndex = index;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Spacer(),
                BookButton(
                  title: 'Book Now',
                  onPressed: selectedDate != null && selectedSlotIndex != null
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green[600],
                                    size: 26,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    'Booking Confirmed!',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your booking details:'),
                                  const SizedBox(height: 12),
                                  BookingDetail(
                                    icon: Icons.sports_soccer,
                                    label: 'Ground',
                                    value: widget.ground.name,
                                  ),
                                  BookingDetail(
                                    icon: Icons.calendar_today,
                                    label: 'Date',
                                    value: DateFormat.yMMMd().format(
                                      selectedDate!,
                                    ),
                                  ),
                                  BookingDetail(
                                    icon: Icons.access_time,
                                    label: 'Time',
                                    value: widget
                                        .ground
                                        .availableSlots[selectedSlotIndex!],
                                  ),
                                  BookingDetail(
                                    icon: Icons.currency_rupee,
                                    label: 'Amount',
                                    value:
                                        '₹${widget.ground.pricePerHour.toInt()}',
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Done'),
                                ),
                              ],
                            ),
                          );
                        }
                      : () {
                          CustomToast.showCustomToast(
                            context,
                            message: 'Please select date and slot',
                          );
                        },
                  icon: Icons.calendar_today,
                  isBookingConfirm:
                      selectedDate != null && selectedSlotIndex != null,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
