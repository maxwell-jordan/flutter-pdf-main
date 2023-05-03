import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:makepdfs/services/auth.dart';
import 'package:makepdfs/models/disasterT.dart';

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
      'name': location_date,
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
      'name': location_date,
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
      'nonHeReqHigh': nonHeReqHigh,
      'nonHeGapsHigh': nonHeGapsHigh,
      'heExistMed': heExistMed,
      'heReqMed': heReqMed,
      'heGapsMed': heGapsMed,
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
      'nonHeGapsLowDur': nonHeGapsLowDur,
      'commReadyBefReq': commReadyBefReq,
      'commReadyBefGaps': commReadyBefGaps,
      'commReadyDurReq': commReadyDurReq,
      'commReadyDurGaps': commReadyDurGaps,
    });
  }

  // all updates should really be written this way
  Future updateDisasterData(
    String location_date,
    DisasterT disaster,
    ) {
    return disasterDataColRef.doc(location_date).update({
      'communityProf': disaster.communityProf,
      'hazardProf': disaster.hazardProf,
      'elderHigh': disaster.elderHigh,
      'elderMed': disaster.elderMed,
      'elderLow': disaster.elderLow,
      'elderIndv': disaster.elderIndv,
      'childHigh': disaster.childHigh,
      'childMed': disaster.childMed,
      'childLow': disaster.childLow,
      'childIndv': disaster.childIndv,
      'hsEdHigh': disaster.hsEdHigh,
      'hsEdMed': disaster.hsEdMed,
      'hsEdLow': disaster.hsEdLow,
      'hsEdIndv': disaster.hsEdIndv,
      'linIsoHigh': disaster.linIsoHigh,
      'linIsoMed': disaster.linIsoMed,
      'linIsoLow': disaster.linIsoLow,
      'linIsoIndv': disaster.linIsoIndv,
      'pocHigh': disaster.pocHigh,
      'pocMed': disaster.pocMed,
      'pocLow': disaster.pocLow,
      'pocIndv': disaster.pocIndv,
      'lincHigh': disaster.lincHigh,
      'lincMed': disaster.lincMed,
      'lincLow': disaster.lincLow,
      'lincIndv': disaster.lincIndv,
      'nheHigh': disaster.nheHigh,
      'nheMed': disaster.nheMed,
      'nheLow': disaster.nheLow,
      'nheIndv': disaster.nheIndv,
      'housingHigh': disaster.housingHigh,
      'housingMed': disaster.housingMed,
      'housingLow': disaster.housingLow,
      'housingIndv': disaster.housingIndv,
      'schoolsHigh': disaster.schoolsHigh,
      'schoolsMed': disaster.schoolsMed,
      'schoolsLow': disaster.schoolsLow,
      'schoolsIndv': disaster.schoolsIndv,
      'hospHigh': disaster.hospHigh,
      'hospMed': disaster.hospMed,
      'hospLow': disaster.hospLow,
      'hospIndv': disaster.hospIndv,
      'wasteHigh':  disaster.wasteHigh,
      'wasteMed': disaster.wasteMed,
      'wasteLow': disaster.wasteLow,
      'wasteIndv': disaster.wasteIndv,
      'elecHigh': disaster.elecHigh,
      'elecMed': disaster.elecMed,
      'elecLow': disaster.elecLow,
      'elecIndv': disaster.elecIndv,
      'waterHigh': disaster.waterHigh,
      'waterMed': disaster.waterMed,
      'waterLow': disaster.waterLow,
      'waterIndv': disaster.waterIndv,
      'wasteWaterHigh': disaster.wasteWaterHigh,
      'wasteWaterMed': disaster.wasteWaterMed,
      'wasteWaterLow': disaster.wasteWaterLow,
      'wasteWaterIndv': disaster.wasteWaterIndv,
      'essenHigh': disaster.essenHigh,
      'essenMed': disaster.essenMed,
      'essenLow': disaster.essenLow,
      'essenIndv': disaster.essenIndv,
      'readyGaps': disaster.readyGaps,
      'prevGaps': disaster.prevGaps,
      'mitiGaps': disaster.mitiGaps,
      'summary': disaster.summary,
      'recommendation': disaster.recommendation,
    });
  }
}