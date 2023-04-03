import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:makepdfs/services/auth.dart';

class DatabaseService {

  final CollectionReference hazardDataColRef = FirebaseFirestore.instance
      .collection('hazard_form');
  final CollectionReference vulnerableDataColRef = FirebaseFirestore.instance
      .collection('vulnerability_form');
  final CollectionReference capacityDataColRef = FirebaseFirestore
      .instance.collection('capacity_form');
  final CollectionReference disasterDataColRef = FirebaseFirestore
      .instance.collection('disaster_form');

 Future addHazardData<DocumentReference>(String location_date) {
   return hazardDataColRef.doc(location_date).set({
      'origin': '', 'force': '', 'warning': '', 'forewarning': '', 'speed': '',
      'freq': '', 'period': '', 'duration': '', 'desc': '', 'affectMe': '', 'affectCommunity': '',
   });
 }

  Future addVulnerableData<DocumentReference>(String location_date) {
    return vulnerableDataColRef.doc(location_date).set({
      'hazardProf': '', 'popHigh': '', 'popMed': '', 'popLow': '', 'elderHigh': '', 'elderMed': '',
      'elderLow': '', 'childHigh': '', 'childMed': '', 'childLow': '', 'hsEdHigh': '', 'hsEdMed': '',
      'hsEdLow': '', 'linIsoHigh': '', 'linIsoMed': '', 'linIsoLow': '', 'pocHigh': '', 'pocMed': '',
      'pocLow': '', 'lincHigh': '', 'lincMed': '', 'lincLow': '', 'nheHigh': '', 'nheMed': '', 'nheLow': '',
      'housingHigh': '', 'housingMed': '', 'housingLow': '', 'schoolsHigh': '', 'schoolsMed': '', 'schoolsLow': '',
      'hospHigh': '', 'hospMed': '', 'hospLow': '', 'wasteHigh': '', 'wasteMed': '', 'wasteLow': '', 'elecHigh': '',
      'elecMed': '', 'elecLow': '', 'waterHigh': '', 'waterMed': '', 'waterLow': '', 'wasteWaterHigh': '', 'wasteWaterMed': '',
      'wasteWaterLow': '', 'essenHigh': '', 'essenMed': '', 'essenLow': '', 'summary': '',
    });
  }

  Future addCapacityData<DocumentReference>(String location_date) async {
    return await capacityDataColRef.doc(location_date).set({
      'prevExist': '', 'prevReq': '', 'prevGaps': '', 'mitiExist': '', 'mitiReq': '', 'mitiGaps': '',
      'heExistHigh': '', 'heReqHigh': '', 'heGapsHigh': '', 'nonHeExistHigh': '', 'nonHeReqHigh': '',
      'nonHeGapsHigh': '', 'heExistMed': '', 'heReqMed': '', 'heGapsMed': '', 'nonHeExistMed': '', 'nonHeReqMed': '',
      'nonHeGapsMed': '', 'heExistLowBef': '', 'heReqLowBef': '', 'heGapsLowBef': '', 'nonHeExistLowBef': '', 'nonHeReqLowBef': '',
      'nonHeGapsLowBef': '', 'heExistLowDur': '', 'heReqLowDur': '', 'heGapsLowDur': '', 'nonHeExistLowDur': '', 'nonHeReqLowDur': '',
      'nonHeGapsLowDur': '', 'commReadyBefReq': '', 'commReadyBefGaps': '', 'commReadyDurReq': '', 'commReadyDurGaps': '',
    });
  }

  Future addDisasterData<DocumentReference>(String location_date) async {
    return await disasterDataColRef.doc(location_date).set({
      'communityProf': '', 'hazardProf': '', 'elderHigh': '', 'elderMed': '', 'elderLow': '',
      'elderIndv': '', 'childHigh': '', 'childMed': '', 'childLow': '', 'childIndv': '', 'hsEdHigh': '',
      'hsEdMed': '', 'hsEdLow': '', 'hsEdIndv': '', 'linIsoHigh': '', 'linIsoMed': '', 'linIsoLow': '',
      'linIsoIndv': '', 'pocHigh': '', 'pocMed': '', 'pocLow': '', 'pocIndv': '', 'lincHigh': '',
      'lincMed': '', 'lincLow': '', 'lincIndv': '', 'nheHigh': '', 'nheMed': '', 'nheLow': '', 'nheIndv': '',
      'housingHigh': '', 'housingMed': '', 'housingLow': '', 'housingIndv': '', 'schoolsHigh': '', 'schoolsMed': '',
      'schoolsLow': '', 'schoolsIndv': '', 'hospHigh': '', 'hospMed': '', 'hospLow': '', 'hospIndv': '', 'wasteHigh': '',
      'wasteMed': '', 'wasteLow': '', 'wasteIndv': '', 'elecHigh': '', 'elecMed': '', 'elecLow': '', 'elecIndv': '',
      'waterHigh': '', 'waterMed': '', 'waterLow': '', 'waterIndv': '', 'wasteWaterHigh': '', 'wasteWaterMed': '',
      'wasteWaterLow': '', 'wasteWaterIndv': '', 'essenHigh': '', 'essenMed': '', 'essenLow': '', 'essenIndv': '',
      'summary': '', 'recommendation': '',
    });
  }

  Future updateHazardData(
  String location_date,
  String origin,
  String force,
  String warning,
  String forewarning,
  String speed,
  String freq,
  String period,
  String duration,
  String desc,
  String affectMe,
  String affectCommunity,
  ) {
    return hazardDataColRef.doc(location_date).update({
      'origin': origin,
      'force': force,
      'warning': warning,
      'forewarning' : forewarning,
      'speed': speed,
      'freq' : freq,
      'period': period,
      'duration': duration,
      'desc': desc,
      'affectMe': affectMe,
      'affectCommunity': affectCommunity,
    });
  }

  Future updateVulnerableData(
  String location_date,
  String hazardProf,
  String popHigh,
  String popMed,
  String popLow,
  String elderHigh,
  String elderMed,
  String elderLow,
  String childHigh,
  String childMed,
  String childLow,
  String hsEdHigh,
  String hsEdMed,
  String hsEdLow,
  String linIsoHigh,
  String linIsoMed,
  String linIsoLow,
  String pocHigh,
  String pocMed,
  String pocLow,
  String lincHigh,
  String lincMed,
  String lincLow,
  String nheHigh,
  String nheMed,
  String nheLow,
  String housingHigh,
  String housingMed,
  String housingLow,
  String schoolsHigh,
  String schoolsMed,
  String schoolsLow,
  String hospHigh,
  String hospMed,
  String hospLow,
  String wasteHigh,
  String wasteMed,
  String wasteLow,
  String elecHigh,
  String elecMed,
  String elecLow,
  String waterHigh,
  String waterMed,
  String waterLow,
  String wasteWaterHigh,
  String wasteWaterMed,
  String wasteWaterLow,
  String essenHigh,
  String essenMed,
  String essenLow,
  String summary,
  ) {
    return vulnerableDataColRef.doc(location_date).update({
      'hazardProf': hazardProf,
      'popHigh': popHigh,
      'popMed': popMed,
      'popLow':popLow,
      'elderHigh': elderHigh,
      'elderMed': elderMed,
      'elderLow': elderLow,
      'childHigh': childHigh,
      'childMed': childMed,
      'childLow': childLow,
      'hsEdHigh': hsEdHigh,
      'hsEdMed': hsEdMed,
      'hsEdLow': hsEdLow,
      'linIsoHigh': linIsoHigh,
      'linIsoMed': linIsoMed,
      'linIsoLow': linIsoLow,
      'pocHigh': pocHigh,
      'pocMed': pocMed,
      'pocLow': pocLow,
      'lincHigh': lincHigh,
      'linIsoMed': linIsoMed,
      'linIsoLow': linIsoLow,
      'pocHigh': pocHigh,
      'pocMed': pocMed,
      'pocLow': pocLow,
      'lincHigh': lincHigh,
      'lincMed': lincMed,
      'linIsoLow': linIsoLow,
      'pocHigh': pocHigh,
      'pocMed': pocMed,
      'pocLow': pocLow,
      'lincHigh': lincHigh,
      'lincMed': lincMed,
      'lincLow': lincLow,
      'nheHigh': nheHigh,
      'nheMed': nheMed,
      'nheLow': nheLow,
      'housingHigh': housingHigh,
      'housingMed': housingMed,
      'housingLow': housingLow,
      'schoolsHigh': schoolsHigh,
      'schoolsMed': schoolsMed,
      'schoolsLow': schoolsLow,
      'hospHigh': hospHigh,
      'hospMed': hospMed,
      'hospLow': hospLow,
      'wasteHigh': wasteHigh,
      'wasteMed': wasteMed,
      'wasteLow': wasteLow,
      'elecHigh': elecHigh,
      'elecMed': elecMed,
      'elecLow': elecLow,
      'waterHigh': waterHigh,
      'waterMed': waterMed,
      'waterLow': waterLow,
      'wasteWaterHigh': wasteWaterHigh,
      'wasteWaterMed': wasteWaterMed,
      'wasteWaterLow': wasteWaterLow,
      'essenHigh': essenHigh,
      'essenMed': essenMed,
      'essenLow': essenLow,
      'summary': summary,
    });
  }

  Future updateCapacityData(
  String location_date,
  String prevExist,
  String prevReq,
  String prevGaps,
  String mitiExist,
  String mitiReq,
  String mitiGaps,
  String heExistHigh,
  String heReqHigh,
  String heGapsHigh,
  String nonHeExistHigh,
  String nonHeReqHigh,
  String nonHeGapsHigh,
  String heExistMed,
  String heReqMed,
  String heGapsMed,
  String nonHeExistMed,
  String nonHeReqMed,
  String nonHeGapsMed,
  String heExistLowBef,
  String heReqLowBef,
  String heGapsLowBef,
  String nonHeExistLowBef,
  String nonHeReqLowBef,
  String nonHeGapsLowBef,
  String heExistLowDur,
  String heReqLowDur,
  String heGapsLowDur,
  String nonHeExistLowDur,
  String nonHeReqLowDur,
  String nonHeGapsLowDur,
  String commReadyBefReq,
  String commReadyBefGaps,
  String commReadyDurReq,
  String commReadyDurGaps,
  ) {
    return capacityDataColRef.doc(location_date).update({
      'prevExist': prevExist,
      'prevReq': prevReq,
      'prevGaps': prevGaps,
      'mitiExist': mitiExist,
      'mitiReq': mitiReq,
      'mitiGaps': mitiGaps,
      'heExistHigh': heExistHigh,
      'heReqHigh': heReqHigh,
      'heGapsHigh': heGapsHigh,
      'nonHeExistHigh': nonHeExistHigh,
      'nonHeReqMed': nonHeReqMed,
      'nonHeGapsHigh': nonHeGapsHigh,
      'heExistMed': heExistMed,
      'heReqMed': heReqMed,
      'heGapsLowBef': heGapsLowBef,
      'nonHeExistMed': nonHeExistMed,
      'nonHeReqMed': nonHeReqMed,
      'nonHeGapsMed': nonHeGapsMed,
      'heExistLowBef': heExistLowBef,
      'heReqLowBef': heReqLowBef,
      'heGapsLowBef': heGapsLowBef,
      'nonHeExistLowBef': nonHeExistLowBef,
      'nonHeReqLowBef': nonHeReqLowBef,
      'nonHeGapsLowBef': nonHeGapsLowBef,
      'heExistLowDur': heExistLowDur,
      'heReqLowDur': heReqLowDur,
      'heGapsLowDur': heGapsLowDur,
      'nonHeExistLowDur': nonHeExistLowDur,
      'nonHeReqLowDur': nonHeReqLowDur,
      'commReadyBefReq': commReadyBefReq,
      'commReadyDurReq': commReadyBefGaps,
      'commReadyDurReq': commReadyDurReq,
      'commReadyDurGaps': commReadyDurGaps,
    });
  }

  Future updateDisasterData(
  String location_date,
  String communityProf,
  String hazardProf,
  String elderHigh,
  String elderMed,
  String elderLow,
  String elderIndv,
  String childHigh,
  String childMed,
  String childLow,
  String childIndv,
  String hsEdHigh,
  String hsEdMed,
  String hsEdLow,
  String hsEdIndv,
  String linIsoHigh,
  String linIsoMed,
  String linIsoLow,
  String linIsoIndv,
  String pocHigh,
  String pocMed,
  String pocLow,
  String pocIndv,
  String lincHigh,
  String lincMed,
  String lincLow,
  String lincIndv,
  String nheHigh,
  String nheMed,
  String nheLow,
  String nheIndv,
  String housingHigh,
  String housingMed,
  String housingLow,
  String housingIndv,
  String schoolsHigh,
  String schoolsMed,
  String schoolsLow,
  String schoolsIndv,
  String hospHigh,
  String hospMed,
  String hospLow,
  String hospIndv,
  String wasteHigh,
  String wasteMed,
  String wasteLow,
  String wasteIndv,
  String elecHigh,
  String elecMed,
  String elecLow,
  String elecIndv,
  String waterHigh,
  String waterMed,
  String waterLow,
  String waterIndv,
  String wasteWaterHigh,
  String wasteWaterMed,
  String wasteWaterLow,
  String wasteWaterIndv,
  String essenHigh,
  String essenMed,
  String essenLow,
  String essenIndv,
  String readyGaps,
  String prevGaps,
  String mitiGaps,
  String summary,
  String recommendation,
    ) {
    return disasterDataColRef.doc(location_date).update({
      'communityProf': communityProf,
      'hazardProf': hazardProf,
      'elderHigh': elderHigh,
      'elderMed': elderMed,
      'elderLow': elderLow,
      'elderIndv': elderIndv,
      'childHigh': childHigh,
      'childMed': childMed,
      'childLow': childLow,
      'childIndv': childIndv,
      'hsEdHigh': hsEdHigh,
      'hsEdMed': hsEdMed,
      'hsEdLow': hsEdLow,
      'hsEdIndv': hsEdIndv,
      'linIsoHigh': linIsoHigh,
      'linIsoMed': linIsoMed,
      'linIsoLow': linIsoLow,
      'linIsoIndv': linIsoIndv,
      'pocHigh': pocHigh,
      'pocMed': pocMed,
      'pocLow': pocLow,
      'pocIndv': pocIndv,
      'lincHigh': lincHigh,
      'lincMed': lincMed,
      'lincLow': lincLow,
      'lincIndv': lincIndv,
      'nheHigh': nheHigh,
      'nheMed': nheMed,
      'nheLow': nheLow,
      'nheIndv': nheIndv,
      'housingHigh': housingHigh,
      'housingMed': housingMed,
      'housingLow': housingLow,
      'housingIndv': housingIndv,
      'schoolsHigh': schoolsHigh,
      'schoolsMed': schoolsMed,
      'schoolsLow': schoolsLow,
      'schoolsIndv': schoolsIndv,
      'hospHigh': hospHigh,
      'hospMed': hospMed,
      'hospLow': hospLow,
      'hospIndv': hospIndv,
      'wasteHigh':  wasteHigh,
      'wasteMed': wasteMed,
      'wasteLow': wasteLow,
      'wasteIndv': wasteIndv,
      'elecHigh': elecHigh,
      'elecMed': elecMed,
      'elecLow': elecLow,
      'elecIndv': elecIndv,
      'waterHigh': waterHigh,
      'waterMed': waterMed,
      'waterLow': waterLow,
      'waterIndv': waterIndv,
      'wasteWaterHigh': wasteWaterHigh,
      'wasteWaterMed': wasteWaterMed,
      'wasteWaterLow': wasteWaterLow,
      'wasteWaterIndv': wasteWaterIndv,
      'wasteWaterIndv': wasteWaterIndv,
      'essenHigh': essenHigh,
      'essenMed': essenMed,
      'essenLow': essenLow,
      'essenIndv': essenIndv,
      'readyGaps': readyGaps,
      'prevGaps': prevGaps,
      'mitiGaps': mitiGaps,
      'summary': summary,
      'recommendation':recommendation,
    });
  }
}

