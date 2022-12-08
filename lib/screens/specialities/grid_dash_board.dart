import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Items {
  String title;
  String volume;
  String img;
  Items({required this.img, required this.title, required this.volume});
}

class GridDashBoard extends StatelessWidget {
  Items item1 = Items(
      img: 'assets/specialities_assets/nurse.png',
      title: 'Nurse',
      volume: '72 Nurses');
  Items item2 = Items(
      img: 'assets/specialities_assets/family_doctor.png',
      title: 'Family Doctor',
      volume: '128 Doctors');
  Items item3 = Items(
      img: 'assets/specialities_assets/gynaecologist.png',
      title: 'Gynaecologist',
      volume: '38 Doctors');
  Items item4 = Items(
      img: 'assets/specialities_assets/syringe.png',
      title: 'MedLab\Technician',
      volume: '39 Technicians');
  Items item5 = Items(
      img: 'assets/specialities_assets/chemist.png',
      title: 'Chemist',
      volume: '24 Chemists');
  Items item6 = Items(
      img: 'assets/specialities_assets/opthamologist.png',
      title: 'Eye Doctor',
      volume: '14 Doctors');
  Items item7 = Items(
      img: 'assets/specialities_assets/radiology.png',
      title: 'Radiologist',
      volume: '9 Technicians');
  Items item8 = Items(
      img: 'assets/specialities_assets/pharmacist.png',
      title: 'Pharmacist',
      volume: '58 Pharmacist');
  Items item9 = Items(
      img: 'assets/specialities_assets/general_doctor.png',
      title: 'General Doctor',
      volume: '74 Doctors');
  Items item10 = Items(
      img: 'assets/specialities_assets/cardiologist.png',
      title: 'cardiologist',
      volume: '7 Doctors');
  Items item11 = Items(
      img: 'assets/specialities_assets/dentist.png',
      title: 'Dentist',
      volume: '15 Dentists');
  Items item12 = Items(
      img: 'assets/specialities_assets/neurosurgeon.png',
      title: 'Neurosurgeon',
      volume: '4 Doctors');
  Items item13 = Items(
      img: 'assets/specialities_assets/physiotherapist.png',
      title: 'Physiotherapist',
      volume: '10 Physiotherapist');
  Items item14 = Items(
      img: 'assets/specialities_assets/paedetric_doctor.png',
      title: 'Children Doctor',
      volume: '26 Doctors');

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10,
      item11,
      item12,
      item13,
      item14,
    ];
    return Flexible(
      child: GridView.count(
          padding: const EdgeInsets.only(left: 12, right: 12),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 55,
                  ),
                  const Gap(14),
                  Text(
                    data.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Gap(8),
                  Text(
                    data.volume,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}
