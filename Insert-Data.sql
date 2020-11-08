-- -------------------- 20 NURSES, 6 of them are RNs -----------------------------------
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('1', 'Chaim Sanders', '3', 'CNA', '(600) 859-5504', '73488');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('2', 'Adele Nunez', '1', 'RN', '(738) 411-4706', '67556');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('3', 'Lillian Burch', '5', 'CNA', '(161) 503-2977', '70521');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('4', 'Josephine Little', '4', 'RN', '(388) 715-1228', '61720');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('5', 'Ali Mullen', '3', 'LPN', '(188) 988-2155', '67898');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('6', 'Amethyst Robertson', '3', 'CNA', '(670) 438-4159', '81103');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('7', 'Tucker Mcmillan', '4', 'CNA', '(365) 623-8304', '74877');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('8', 'Hilary Norris', '5', 'LPN', '(378) 407-6995', '61823');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('9', 'Sopoline Bennett', '3', 'RN', '(784) 815-7542', '62990');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('10', 'Adria Poole', '1', 'LPN', '(638) 913-3676', '80195');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('11', 'Velma Robbins', '2', 'CNA', '(736) 515-9167', '79716');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('12', 'Blossom Marquez', '4', 'LPN', '(608) 734-0884', '61601');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('13', 'Evan Hoover', '2', 'CNA', '(951) 906-8031', '69559');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('14', 'Brady Dickerson', '2', 'RN', '(454) 953-9083', '81588');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('15', 'Imelda Charles', '3', 'CNA', '(489) 141-5211', '65177');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('16', 'Sigourney Merritt', '2', 'RN', '(260) 836-7057', '79775');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('17', 'Xantha Griffith', '1', 'CNA', '(999) 114-2216', '60695');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('18', 'Amal Shields', '2', 'RN', '(344) 675-6999', '79749');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('19', 'Melinda Dawson', '4', 'CNA', '(939) 853-0901', '69968');
INSERT INTO `RVH`.`Nurses` (`nid`, `name`, `care_centre_id`, `certificate_type`, `telephone`, `salary`) VALUES ('20', 'Nash Hays', '5', 'RN', '(703) 797-0352', '70958');

-- -------------------- 5 care centres (nurse in charge are RNs) -----------------------------------
INSERT INTO `RVH`.`Care_centres` (`cid`, `name`, `location`, `nurse_charge_id`) VALUES ('1', 'Zen Royce Centre', '12 Blue Jays Way', '14');
INSERT INTO `RVH`.`Care_centres` (`cid`, `name`, `location`, `nurse_charge_id`) VALUES ('2', 'Fan Michael Centre', '34 WickerHam Rd', '16');
INSERT INTO `RVH`.`Care_centres` (`cid`, `name`, `location`, `nurse_charge_id`) VALUES ('3', 'Maroon Centre', '18 Hammer Town St', '18');
INSERT INTO `RVH`.`Care_centres` (`cid`, `name`, `location`, `nurse_charge_id`) VALUES ('4', 'Hazel Bungle Centre', '182 College Rd', '9');
INSERT INTO `RVH`.`Care_centres` (`cid`, `name`, `location`, `nurse_charge_id`) VALUES ('5', 'McEllen Centre', '66 Western Avenue South', '2');

-- -------------------- 50 patients -----------------------------------
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('1', 'Amity Lloyd', 'Ap #141-2060 Semper. St.', '(197) 248-9499', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('2', 'Portia Mann', '684-8191 Felis St.', '(971) 367-4112', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('3', 'Imani Church', 'P.O. Box 583, 9692 Orci Rd.', '(475) 168-1706', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('4', 'Sharon Ewing', '9927 Consectetuer Street', '(375) 825-2600', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('5', 'Jaime Aguirre', 'P.O. Box 440, 3380 Aliquam St.', '(369) 466-6902', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('6', 'Pascale Higgins', 'Ap #879-8759 Et, Avenue', '(341) 418-9404', '5');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('7', 'Ivana Craig', '2503 Mus. Av.', '(397) 458-1077', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('8', 'Barbara Ross', 'Ap #109-2705 Sed Rd.', '(125) 771-9334', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('9', 'Rebecca Harrison', 'P.O. Box 145, 9730 Tincidunt Road', '(650) 141-2855', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('10', 'Britanney Underwood', 'P.O. Box 180, 3098 Nunc, Av.', '(519) 503-2604', '5');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('11', 'Dominique Bass', '8222 Ornare, Street', '(375) 705-1966', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('12', 'Bryar Marsh', 'Ap #133-3393 Massa. Rd.', '(187) 440-4635', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('13', 'Hollee Dunn', 'Ap #509-8157 Quam. Road', '(319) 396-8598', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('14', 'Meghan Daugherty', '685-4699 Vivamus Ave', '(912) 297-6917', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('15', 'Zephr Knowles', 'Ap #304-9513 Scelerisque Rd.', '(992) 918-8244', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('16', 'Farrah Beasley', '190 Erat. St.', '(983) 924-4248', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('17', 'Jaden Prince', '7890 Eu Rd.', '(186) 637-9326', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('18', 'Cecilia Cline', 'P.O. Box 348, 7249 Phasellus Rd.', '(288) 644-7717', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('19', 'Eleanor Bowers', '7042 Dui, Avenue', '(818) 841-0198', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('20', 'Reagan Brooks', 'Ap #862-2365 Scelerisque St.', '(445) 144-0891', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('21', 'Hanae Tate', 'P.O. Box 825, 4074 Donec Street', '(666) 642-5684', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('22', 'Iris Washington', 'Ap #143-9683 Sed St.', '(381) 515-9206', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('23', 'Kaitlin Gonzales', '509 Eu St.', '(365) 984-1983', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('24', 'Ava Bentley', 'Ap #533-2443 Ultrices Av.', '(935) 376-5206', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('25', 'Jolie Melendez', 'P.O. Box 127, 1564 Donec Ave', '(965) 364-5369', '5');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('26', 'Breanna Bass', 'P.O. Box 985, 6385 Donec Rd.', '(249) 228-1760', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('27', 'Imelda Melton', '4590 Risus Street', '(788) 786-6881', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('28', 'McKenzie Hale', '2756 Amet Rd.', '(569) 281-0005', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('29', 'Madaline Hyde', '7837 Ultricies St.', '(209) 942-4632', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('30', 'MacKensie Middleton', 'P.O. Box 406, 1444 Magna Av.', '(290) 426-5062', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('31', 'Sylvia Vinson', '205-7174 Metus. St.', '(194) 773-4159', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('32', 'Scarlet Holloway', 'P.O. Box 651, 2082 Erat, Rd.', '(384) 106-7012', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('33', 'Kiona Fisher', 'Ap #257-9834 Leo. Rd.', '(788) 689-3702', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('34', 'Quinn Maxwell', '4054 Quis Av.', '(688) 257-6864', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('35', 'Stacy David', '688-9850 Ac St.', '(544) 399-2153', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('36', 'Lois Snow', 'Ap #200-8343 Vulputate, Road', '(478) 420-0830', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('37', 'Ori Cantrell', '3553 Dictum Rd.', '(679) 698-8443', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('38', 'Meredith Stephenson', 'Ap #727-7981 Vel, Street', '(410) 799-5912', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('39', 'Shaine Hensley', '7880 Mauris Road', '(636) 449-8964', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('40', 'Ori Henry', 'Ap #375-3402 Cras Avenue', '(480) 360-8336', '5');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('41', 'Kaye Foster', 'Ap #148-2038 Rutrum. St.', '(649) 312-5927', '5');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('42', 'Justine Hernandez', 'P.O. Box 175, 9776 Lacus. St.', '(598) 797-4030', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('43', 'Constance Mcgee', '337-8291 Massa. St.', '(551) 527-7726', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('44', 'Grace Dunlap', '951-4310 Duis Rd.', '(585) 809-2585', '1');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('45', 'Helen Hardy', '7755 In Rd.', '(638) 155-4767', '3');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('46', 'Sopoline Pollard', 'Ap #891-5175 Cras Street', '(799) 421-4473', '4');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('47', 'Zorita Tate', '303-5247 Nunc Street', '(471) 215-8177', NULL);
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('48', 'Jocelyn Turner', '524 Nulla Rd.', '(431) 934-9059', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('49', 'Leandra Silva', '684 Sed St.', '(790) 664-6806', '2');
INSERT INTO `RVH`.`Patients` (`pid`, `name`, `address`, `telephone`, `care_centre_id`) VALUES ('50', 'Xena Berry', '4037 At, Road', '(766) 172-2604', '4');

-- -------------------- 7 Physicians -----------------------------------
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('1', 'Amie Chen', '3581285987', '(197) 248-9499', '101000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('2', 'Lolly Edwin', '3581288111', '(971) 367-4112', '99000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('3', 'Mazy Chung', '3599225984', '(475) 168-1706', '110000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('4', 'Ham Giggio', '1242285987', '(375) 825-2600', '123000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('5', 'Nick George', '3020293982', '(369) 466-6902', '121000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('6', 'Craig Matty', '3020293337', '(341) 418-9404', '142000');
INSERT INTO `RVH`.`Physicians` (`phid`, `name`, `pager_number`, `specialization`, `salary`) VALUES ('7', 'Halsey Jensen', '3011293130', '(397) 458-1077', '133000');

-- -------------------- 75 Treatment records -----------------------------------
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('1', '28', '3', 'treatment6', '2020/04/03');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('2', '18', '5', 'treatment6', '2021/02/20');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('3', '47', '2', 'treatment2', '2020/04/23');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('4', '21', '7', 'treatment4', '2021/07/21');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('5', '38', '1', 'treatment1', '2020/06/19');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('6', '20', '1', 'treatment8', '2019/11/26');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('7', '13', '4', 'treatment6', '2021/06/21');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('8', '2', '2', 'treatment3', '2019/11/05');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('9', '24', '2', 'treatment7', '2021/04/08');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('10', '41', '4', 'treatment5', '2019/11/01');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('11', '24', '1', 'treatment2', '2019/11/12');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('12', '37', '1', 'treatment3', '2020/09/08');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('13', '35', '1', 'treatment9', '2021/05/23');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('14', '48', '1', 'treatment4', '2021/06/03');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('15', '9', '4', 'treatment3', '2021/09/02');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('16', '14', '3', 'treatment6', '2021/02/25');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('17', '19', '2', 'treatment9', '2020/06/21');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('18', '22', '4', 'treatment9', '2020/05/09');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('19', '6', '1', 'treatment8', '2020/06/13');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('20', '4', '7', 'treatment9', '2021/04/23');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('21', '47', '7', 'treatment1', '2021/01/12');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('22', '21', '2', 'treatment2', '2019/11/09');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('23', '7', '1', 'treatment2', '2020/05/11');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('24', '38', '5', 'treatment1', '2021/07/25');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('25', '13', '6', 'treatment4', '2021/09/20');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('26', '22', '7', 'treatment3', '2021/09/12');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('27', '15', '4', 'treatment6', '2021/05/30');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('28', '41', '6', 'treatment3', '2021/10/07');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('29', '6', '2', 'treatment4', '2021/06/08');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('30', '46', '2', 'treatment7', '2020/06/22');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('31', '45', '4', 'treatment3', '2020/09/12');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('32', '47', '1', 'treatment8', '2020/11/09');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('33', '36', '3', 'treatment5', '2021/03/10');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('34', '5', '1', 'treatment5', '2020/12/25');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('35', '30', '7', 'treatment2', '2020/02/17');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('36', '37', '7', 'treatment5', '2021/08/08');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('37', '35', '6', 'treatment3', '2021/09/25');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('38', '19', '7', 'treatment9', '2021/02/01');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('39', '17', '5', 'treatment5', '2021/05/11');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('40', '5', '2', 'treatment5', '2020/02/21');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('41', '4', '2', 'treatment2', '2021/06/24');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('42', '50', '4', 'treatment2', '2020/01/19');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('43', '3', '7', 'treatment9', '2020/04/30');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('44', '43', '7', 'treatment4', '2021/01/18');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('45', '35', '4', 'treatment1', '2020/01/19');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('46', '7', '7', 'treatment9', '2021/06/09');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('47', '28', '6', 'treatment8', '2020/01/22');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('48', '47', '3', 'treatment9', '2021/08/30');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('49', '20', '7', 'treatment7', '2020/02/14');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('50', '39', '3', 'treatment4', '2020/10/21');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('51', '3', '5', 'treatment6', '2020/08/23');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('52', '44', '5', 'treatment1', '2021/04/15');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('53', '8', '2', 'treatment2', '2021/01/17');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('54', '21', '3', 'treatment7', '2020/12/29');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('55', '40', '4', 'treatment5', '2020/03/22');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('56', '20', '3', 'treatment8', '2021/10/11');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('57', '40', '7', 'treatment4', '2020/01/25');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('58', '30', '3', 'treatment9', '2020/03/07');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('59', '14', '5', 'treatment6', '2021/07/03');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('60', '38', '4', 'treatment2', '2021/09/24');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('61', '36', '2', 'treatment5', '2021/02/04');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('62', '50', '7', 'treatment2', '2021/03/23');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('63', '46', '3', 'treatment7', '2020/03/19');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('64', '4', '1', 'treatment6', '2020/09/16');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('65', '34', '2', 'treatment2', '2021/03/13');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('66', '21', '3', 'treatment2', '2021/09/13');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('67', '12', '3', 'treatment9', '2020/04/30');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('68', '4', '6', 'treatment2', '2021/02/19');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('69', '20', '1', 'treatment4', '2019/11/11');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('70', '24', '2', 'treatment5', '2020/08/22');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('71', '45', '7', 'treatment4', '2021/02/11');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('72', '33', '1', 'treatment2', '2020/08/06');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('73', '42', '1', 'treatment6', '2021/03/20');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('74', '37', '3', 'treatment3', '2021/05/28');
INSERT INTO `RVH`.`Treatments` (`tid`, `patient_id`, `physician_id`, `treatment_name`, `date`) VALUES ('75', '30', '6', 'treatment3', '2020/11/27');
