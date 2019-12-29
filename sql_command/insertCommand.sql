USE delivery_db;

-- deal with User table

INSERT INTO User (UName, account, password, address, phone) values
("Yun", "Yun1234", "adfqew81235", "1311 N Pecan StNewport, Arkansas(AR), 72112", "0911111111"),
("Johnny", "Johnny4567", "4854ada456", "17107 Croom RdBrandywine, Maryland(MD), 20613", "0922222222"),
("Kevin", "Kevin9876", "ads31h58yn", "2500 Rachel TerPine Brook, New Jersey(NJ), 07058", "0933333333"),
("Amy", "Amy4455", "48wqb1556kk", "Jamaica Plain, Massachusetts(MA), 02130", "0944444444"),
("David", "David5566", "v15fr8ew", "140 Central AveAurora, Illinois(IL), 60506", "0955555555"),
("Crist", "Crist7531", "hf8r724ru", "Po Box 154Spavinaw, Oklahoma(OK), 74366", "0966666666"),
("Daniel", "Daniel66", "fsd68r153b", "16100 Maple Park Dr #APT 1Maple Heights, Ohio(OH), 44137", "0977777777"),
("Howard", "Howard77", "42es2bv1sdr", "70 Hidden Lake RdHavana, Florida(FL), 32333", "0988888888"),
("Blanche", "Blanche914", "fd54ttr988", "92 Hawks Nest DrSummersville, West Virginia(WV),", "0912345678"),
("Alberta", "Alberta778", "sfgv15r", "2008 Butler Pike #UNT AConshohocken, Pennsylvania(PA), 19428", "0987654321"),
("Adriana C McClendon", "Carol666", "8486ersfdg", "2464 Marcia DrBellbrook, Ohio(OH), 45305", "0921345678"),
("Kenneth M Fincher", "haha989", "asdfeewf", "35274 State 172 RteLisbon, Ohio(OH), 44432", "0914244956");

-- deal with Platform table

INSERT INTO Platform (PName, shippingFee, P_IMG_URL) values
("UberEats", 100, "..\\PIC\\Platform\\Uber_eats.png"),
("Deliverroo", 100, "..\\PIC\\Platform\\Deliveroo.png"),
("Foodpanda", 100, "..\\PIC\\Platform\\foodPanda.png");

-- deal with Platform_activity table

INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "welcome", 30, 0, NULL, NULL, "【新戶優惠】運費3 折優惠一次", NULL, "2012-03-14 00:00:00", "2012-04-14 00:00:00"
FROM Platform
WHERE PName = "UberEats");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 60, 0, NULL, NULL, "【限時優惠】運費6折優惠一次", NULL, "2020-01-01 00:00:00", "2020-01-02 00:00:00"
FROM Platform
WHERE PName = "deliverroo");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "11/11", 30, 0, NULL, NULL, "【雙11優惠】運費3折優惠一次", NULL, "2019-11-11 00:00:00", "2020-11-12 00:00:00"
FROM Platform
WHERE PName = "UberEats");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-03-17 00:00:00", "2020-03-19 00:00:00"
FROM Platform
WHERE PName = "Foodpanda");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "welcome", 40, 0, NULL, NULL, "【新戶優惠】運費4 折優惠一次", NULL, "2020-03-18 00:00:00", "2020-06-18 00:00:00"
FROM Platform
WHERE PName = "deliverroo");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "welcome", 0, 0, NULL, NULL, "【新戶優惠】免運優惠一次", NULL, "2020-03-19 00:00:00", "2020-03-19 00:00:00"
FROM Platform
WHERE PName = "Foodpanda");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-03-20 00:00:00", "2020-03-20 00:00:00"
FROM Platform
WHERE PName = "deliverroo");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-01-01 00:00:00", "2020-02-01 00:00:00"
FROM Platform
WHERE PName = "Foodpanda");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-03-09 00:00:00", "2020-04-16 00:00:00"
FROM Platform
WHERE PName = "deliverroo");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "welcome", 30, 0, NULL, NULL, "【新戶優惠】新戶即享運費3 折優惠一次", NULL, "2020-03-23 00:00:00", "2020-03-23 00:00:00"
FROM Platform
WHERE PName = "UberEats");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-01-05 00:00:00", "2020-01-06 00:00:00"
FROM Platform
WHERE PName = "UberEats");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "welcome", 60, 0, NULL, NULL, "【新戶優惠】運費6折優惠一次", NULL, "2020-01-08 00:00:00", "2020-01-20 00:00:00"
FROM Platform
WHERE PName = "deliverroo");
INSERT INTO Platform_activity(PID, PA_Name, discount_shippingFee, foodDiscountMode, FDM_arg1, FDM_arg2, description, P_ACT_IMG_URL, start_time, end_time)
(SELECT PID, "Hurry up", 0, 0, NULL, NULL, "【限時優惠】免運", NULL, "2020-03-26 00:00:00", "2020-05-26 00:00:00"
FROM Platform
WHERE PName = "Foodpanda");


-- deal with Restaurant table

INSERT INTO Restaurant (RName, address, R_IMG_URL) values
("虎噗食多健康餐盒", "106台灣台北市大安區和平東路一段11巷30號", "..\\PIC\\虎噗食多健康餐盒\\a0771122-6a5e-484c-8e4a-4520e9b1d7f1.png"),
("東石鮮蚵", "No. 66, Ningxia Road, Datong District, Taipei City, Taiwan 103", "..\\PIC\\東石鮮蚵\\55b5b12d-ba2f-44f3-9cd8-e36494e3cfc8.jpeg"),
("麥味登 國王2號店", "台北市中山區長春路147-2號1樓", "..\\PIC\\麥味登_國王2號店\\d82ddd45-0cf2-4ffe-ace6-2633cffa80d1.jpeg"),
("包果 Baoguo 中山南西店", "10491台灣台北市中山區中山北路二段16巷22號", "..\\PIC\\包果_Baoguo_中山南西店\\a77a11ce-23d6-465f-8d39-2d1c8434f612.jpeg"),
("寶之薌涼麵 老婆粥", "台北市中正區青島東路23號之2", "..\\PIC\\寶之薌涼麵_老婆粥\\c0dbefe7-983d-4290-b831-fe37c76197b4.jpeg"),
("豪季水餃", "39, Lane 107, Section 1, Fuxing South Road, Taipei City 106", "..\\PIC\\豪季水餃\\5bc21257-a433-4291-9552-0bb62fa907fa.jpeg"),
("秧米 Yumeat", "10491台灣台北市中山區市民大道三段25號", "..\\PIC\\秧米_Yumeat\\0d14e9ee-0ed4-40ca-bbba-7cadca3a1404.jpeg"),
("九湯屋 中正店", "No. 44, Huaining Street, Zhongzheng District, Taipei City, Taiwan 100, 1樓", "..\\PIC\\九湯屋_中正店\\a7acaec5-fffb-43d8-bdb9-f310e829b006.jpeg"),
("麵頑者杭州店", "9-1, Section 1, Hangzhou South Road, Taipei City 100", "..\\PIC\\麵頑者杭州店\\77f8351e-2524-4ac8-aeb3-1c46561be0fb.jpeg");

-- deal with supportedPlatform table

INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "虎噗食多健康餐盒" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "虎噗食多健康餐盒" and Platform.PName = "deliverroo");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "虎噗食多健康餐盒" and Platform.PName = "Foodpanda");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "東石鮮蚵" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "東石鮮蚵" and Platform.PName = "deliverroo");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "東石鮮蚵" and Platform.PName = "Foodpanda");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "麥味登 國王2號店" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "麥味登 國王2號店" and Platform.PName = "Foodpanda");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "包果 Baoguo 中山南西店" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "包果 Baoguo 中山南西店" and Platform.PName = "deliverroo");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "豪季水餃" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "豪季水餃" and Platform.PName = "deliverroo");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "豪季水餃" and Platform.PName = "Foodpanda");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "秧米 Yumeat" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "九湯屋 中正店" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "九湯屋 中正店" and Platform.PName = "Foodpanda");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "麵頑者杭州店" and Platform.PName = "UberEats");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "麵頑者杭州店" and Platform.PName = "deliverroo");
INSERT INTO supportedPlatform (RID, PID)
(SELECT RID, PID
FROM Restaurant, Platform
WHERE Restaurant.RName = "麵頑者杭州店" and Platform.PName = "Foodpanda");


-- deal with RestaurantCategory table

INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Breakfast and Brunch"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Taiwanese"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Breakfast and Brunch"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Breakfast and Brunch"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Taiwanese"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Taiwanese"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Japanese"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Japanese"
FROM Restaurant
WHERE Restaurant.RName = "九湯屋 中正店");
INSERT INTO RestaurantCategory (RID, CName)
(SELECT RID, "Japanese"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");


-- deal with Food table

INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "舒肥雞肉餐盒 Chicken Sous Vide Bento", 190, "..\\PIC\\虎噗食多健康餐盒\\a89781e1-5dd1-47bc-a079-d6a20810420b.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "香嫩骰子牛肋條餐盒 Rib Cube Bento", 240, "..\\PIC\\虎噗食多健康餐盒\\2c7025e8-2120-4d53-9730-9a3bc87b86c3.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "五香豬里肌餐盒 Spiced Pork Bento", 200, "..\\PIC\\虎噗食多健康餐盒\\50230529-c48c-4d94-aa3b-36556c113814.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "美味鱸魚排餐盒 Walleye Bento", 220, "..\\PIC\\虎噗食多健康餐盒\\381e8c7e-ca33-42bb-82ec-bccf27c012cb.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "厚切鮭魚排餐盒 Salmon Bento", 240, "..\\PIC\\虎噗食多健康餐盒\\383cabad-4e74-4306-8684-d4204e698693.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "胡椒煎蝦餐盒 Pan-Fried Shrimp with Pepper Bento", 200, "..\\PIC\\虎噗食多健康餐盒\\6fe3e7da-f849-4d38-ac9b-16f849ad68e6.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "翼板牛肉餐盒 Prime Flat Iron Steak Bentom", 230, "..\\PIC\\虎噗食多健康餐盒\\66e7a6e5-a34f-4c7b-a837-6c5add188932.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "舒肥雞腿捲排餐盒 Chicken Legs Bento", 200, "..\\PIC\\虎噗食多健康餐盒\\08faee4f-6238-4042-b70a-e0d61771b517.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "虎噗食多健康餐盒");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "雞蛋蚵仔煎 Pan-Fried Egg with Oyster", 70, "..\\PIC\\東石鮮蚵\\30b33970-5b8e-4b5f-8ed9-e04214bb5b5e.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "無刺虱目魚肚粥 Boneless Milk Fish Belly Congee", 100, "..\\PIC\\東石鮮蚵\\440c652f-03c9-43dd-b10b-2efbd1099221.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "鍋燒意麵 Crispy Fried Noodles", 90, "..\\PIC\\東石鮮蚵\\d423d2cd-dd57-4967-98d8-41b930b4a8eb.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "鮑魚海產粥 Seafood Congee with Abalone", 90, "..\\PIC\\東石鮮蚵\\c037de38-a102-4704-93f3-948b0837b466.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "無刺虱目魚肚湯 Boneless Milk Fish Belly Soup", 90, "..\\PIC\\東石鮮蚵\\6f8382e8-9c0d-4cd0-908d-fe04f7c92042.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "東石鮮蚵");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "咖哩唐揚蛋包飯 Rice Omelet with Curry and Deep-Fried Chicken", 140, "..\\PIC\\麥味登_國王2號店\\89ed50de-c231-45eb-b2da-1ef70feab7d0.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "泰式卡滋脆雞特餐 Thai Crispy Chicken Pasta Meal", 150, "..\\PIC\\麥味登_國王2號店\\e7e0c713-3c2e-4950-bcbc-cb155b90c894.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "港式特餐 Hong Kong Style Meal", 120, "..\\PIC\\麥味登_國王2號店\\08162332-3bbc-475d-936c-132785cb6024.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "羅勒燻雞三明治特餐 Smoked Chicken Sandwich with Basil and Pesto Sauce Meal", 130, "..\\PIC\\麥味登_國王2號店\\2103a716-cb35-4c92-a212-1c06fc784113.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "法式羅勒鮪魚特餐 French Basil Tuna Meal", 125, "..\\PIC\\麥味登_國王2號店\\c46b1929-9531-4704-bbe0-35810f670ab9.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麥味登 國王2號店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "學長鐵板麵 Pork Loin Patty and Thick Omelette Hot Plate Udon with Black Pepper Sauce", 85, "..\\PIC\\包果_Baoguo_中山南西店\\4048d156-4689-4984-94f7-82a73283ffd8.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "肉蛋起司瀑布三明治 Pork Loin Patty and Sunny-Side Up Egg Sandwich with Assorted Cheese", 99, "..\\PIC\\包果_Baoguo_中山南西店\\9fa55e78-60cc-47f2-b552-4f9a21addd40.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "豬頭皮厚蛋三明治 Smoked Pork Scalp and Thick Omelette Sandwich", 80, "..\\PIC\\包果_Baoguo_中山南西店\\12441cf5-d6b2-4474-8466-9b2e3544580a.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "辣台妹三明治 Pork Loin Patty and Thick Omelette Sandwich with Spicy Dried Radish", 85, "..\\PIC\\包果_Baoguo_中山南西店\\2411c362-1b09-4185-8a14-cd0f82e0af3c.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "雞爺hen辣三明治 Spicy Chicken Thigh Sandwich with Thick Omelette and Chili Anchovies", 99, "..\\PIC\\包果_Baoguo_中山南西店\\39f698a5-cb39-4bfb-91f1-19a78f8ee8c6.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "包果 Baoguo 中山南西店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "麻醬泡菜雞絲涼麵 Shredded Chicken Cold Noodles with Kimchi and Sesame Sauce", 70, "..\\PIC\\寶之薌涼麵_老婆粥\\a1cb1055-d3be-4548-b95b-058bfa4846a1.jpg"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "香檸泡菜雞絲涼麵 Lemon Cold Noodles with Kimchi and Shredded Chicken", 60, "..\\PIC\\寶之薌涼麵_老婆粥\\187599fb-05a1-4123-812a-48c1f4368da1.jpg"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "老婆粥 Lean Pork Congee with Century Egg and Salted Egg", 70, "..\\PIC\\寶之薌涼麵_老婆粥\\84d645b5-58cb-40e4-a390-9f905372f4e7.jpg"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "蕃茄雞絲冷麵 Tomato and Shredded Chicken Cold Noodles", 70, "..\\PIC\\寶之薌涼麵_老婆粥\\feed7d43-1e53-496c-8d7b-0ae500db607f.jpg"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "玉米滑蛋瘦肉粥 Lean Pork Congee with Corn and Scrambled Egg", 70, "..\\PIC\\寶之薌涼麵_老婆粥\\a9c065bf-62ad-498e-8080-8d0c6c61a77b.jpg"
FROM Restaurant
WHERE Restaurant.RName = "寶之薌涼麵 老婆粥");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "蝦仁水餃 Shrimp Dumpling10粒", 95, "..\\PIC\\豪季水餃\\8a227567-00e4-4033-b883-351af55d15ec.jpg"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "高麗菜豬肉水餃 Pork Dumplings with Cabbage10粒", 85, "..\\PIC\\豪季水餃\\91e8d48d-8d5e-4c68-a99e-b4e50794e062.jpg"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "蝦仁炒飯 Shrimp Stir-Fried Rice", 105, "..\\PIC\\豪季水餃\\ee71688c-b40a-4185-b18a-d0ea8f49e44a.jpg"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "韭黃豬肉水餃 Pork Dumplings with Yellow Chive10粒", 85, "..\\PIC\\豪季水餃\\790952c4-97f9-453a-a689-2dfbb87efdd4.jpg"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "紅油炒手 Spicy Wonton", 80, "..\\PIC\\豪季水餃\\770ae246-2701-4fb1-8217-c994ea0222c7.jpg"
FROM Restaurant
WHERE Restaurant.RName = "豪季水餃");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "大份火燒牛秧米 Large Roasted Beef Rice Bento", 170, "..\\PIC\\秧米_Yumeat\\19b46b66-7ba0-4ebe-9cd8-cdb7348ba2a8.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "厚切雞腿秧米 Thick Cut Chicken Drumstick Rice Bento", 150, "..\\PIC\\秧米_Yumeat\\0f0fa7b1-b5c4-40db-aa65-c77bedeb083c.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "火燒牛秧米 Roasted Beef Rice Bento", 150, "..\\PIC\\秧米_Yumeat\\19b46b66-7ba0-4ebe-9cd8-cdb7348ba2a8.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "大份蜜汁燒牛秧米 Large Roasted Beef with Honey Rice Bento", 180, "..\\PIC\\秧米_Yumeat\\818f6b08-595a-4a00-9637-397e8cd2abc1.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "大份麻辣牛秧米 Large Hot and Spicy Beef Rice Bento", 180, "..\\PIC\\秧米_Yumeat\\fe1959f1-1d44-40bc-8cdc-1cb44e1b5fe0.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "秧米 Yumeat");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "黑蒜豚骨拉麵 Tonkotsu Ramen with Black Garlic", 149, "..\\PIC\\九湯屋_中正店\\3c87a300-99d1-4b7a-99cb-7d737973cc18.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "九湯屋 中正店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "韓式泡菜拉麵 Korean Kimchi Ramen", 139, "..\\PIC\\九湯屋_中正店\\f207ceeb-9479-44df-9eb5-393ba5b7856a.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "九湯屋 中正店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "蒙古白湯拉麵 Mongolian Broth Ramen", 139, "..\\PIC\\九湯屋_中正店\\49cc6914-1d65-4575-b9b7-4cc4c74bdef0.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "九湯屋 中正店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "東京豚骨拉麵 Tokyo Tonkotsu Ramen", 129, "..\\PIC\\九湯屋_中正店\\96127ff6-21a5-43f8-9135-9dc9d56e76be.jpeg"
FROM Restaurant
WHERE Restaurant.RName = "九湯屋 中正店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "半熟蛋叉燒豚骨拉麵 Pork Broth Ramen with Basted Meat and Half-Boiled Egg", 149, "..\\PIC\\麵頑者杭州店\\7abbbf76-1990-4914-adc8-0a0a1765a09d.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "野菜豚骨拉麵 Pork Broth Ramen with Vegetable", 119, "..\\PIC\\麵頑者杭州店\\7358379e-71e9-4196-8eca-bf34c067e996.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "泡菜叉燒豚骨拉麵 Pork Broth Ramen with Kimchi and Basted Meat", 139, "..\\PIC\\麵頑者杭州店\\fc66b034-07d5-4fb5-b723-d34d620761ee.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "叉燒正油拉麵 Basted Meat Ramen with Tokyo Soy Sauce", 129, "..\\PIC\\麵頑者杭州店\\fbbe4974-533a-4bcd-bfe6-c26a6ff505d8.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");
INSERT INTO Food (RID, FName, price, F_IMG_URL)
(SELECT RID, "地獄叉燒豚骨拉麵 Spicy Basted Meat Tonkotsu Ramen", 159, "..\\PIC\\麵頑者杭州店\\bf032a1b-973d-4739-9052-44823bd6b542.jpg"
FROM Restaurant
WHERE Restaurant.RName = "麵頑者杭州店");

