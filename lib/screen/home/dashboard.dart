import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController startdatetimeinput = TextEditingController();
  TextEditingController enddatetimeinput = TextEditingController();

  @override
  void initState() {
    startdatetimeinput.text = "";
    enddatetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: Icon(Icons.play_arrow_outlined),
      ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Workspace Details",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: TextField(
              maxLength: 100,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration.collapsed(
                hintText: 'Nama Project',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                width: 168,
                child: TextFormField(
                  style: TextStyle(height: 2),
                  controller: startdatetimeinput,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.calendar_month),
                      labelText: "Start Date"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      String formatDate =
                          DateFormat("dd-MMMM-yyyy").format(pickedDate);
                      setState(() {
                        startdatetimeinput.text = formatDate;
                      });
                    } else {
                      print("Date Tidak Dipilih");
                      startdatetimeinput.text = "";
                    }
                  },
                ),
              ),
              Container(
                width: 168,
                child: TextFormField(
                  style: TextStyle(height: 2),
                  controller: enddatetimeinput,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.calendar_month),
                      labelText: "End Date"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      String formatDate =
                          DateFormat("dd-MMMM-yyyy").format(pickedDate);
                      setState(() {
                        enddatetimeinput.text = formatDate;
                      });
                    } else {
                      print("Date Tidak Dipilih");
                      enddatetimeinput.text = "";
                    }
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Description",
                hintText: "Masukan Deskripsi Anda",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 16,
            alignment: Alignment.centerLeft,
            child: Text(
              "Team",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
           
            children: [
              Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(left: 16),
                child: MaterialButton(
  onPressed: () {},
  color: Colors.white30,
  textColor: Colors.white,
  child: Icon(
    Icons.person_add_alt,
    size: 24,
  ),
  padding: EdgeInsets.fromLTRB(12, 12, 16, 16),
  shape: CircleBorder(),
)
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 32,
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Task Project',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(32, 4, 32, 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " ",
                    prefixIcon: Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    fillColor: Color.fromARGB(199, 199, 190, 162),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(32, 4, 32, 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " ",
                    prefixIcon: Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    fillColor: Color.fromARGB(199, 199, 190, 162),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(32, 4, 32, 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " ",
                    prefixIcon: Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    fillColor: Color.fromARGB(199, 199, 190, 162),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(32, 4, 32, 4),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " ",
                    prefixIcon: Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    fillColor: Color.fromARGB(199, 199, 190, 162),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 54, top: 8),
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    label: Text(
                      "New Task",
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 8),
                      width: 132,
                      height: 48,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.remove_circle,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        label: Text(
                          "Remove",
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 8),
                      width: 132,
                      height: 48,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.check_circle,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        label: Text(
                          "Complete",
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
