create database batch8;
use batch8;
create table user(id int not null primary key,username varchar(30),email varchar(30),password varchar(20),phone varchar(20),role varchar(20),address varchar(100));
insert into user values(1,"admin","admin@gmail.com","admin","9441346691","admin","India");
create table product(pid int not null primary key,pname varchar(100),description varchar(100),price int,image varchar(200),stockquantity int,discount int,category varchar(30));
create table wishlist(wid int not null primary key,id int,pid int,pname varchar(30),description varchar(200),price int,image varchar(8000));

create table odetails(orderid int not null primary key,id int,pid int,pname varchar(30),description varchar(200),price int,address varchar(100),email varchar(30),discount int,image varchar(10000),datedetails date,category varchar(30));
create table sales(sid int not null primary key,datedetails date,id int,pid int,pname varchar(40),category varchar(30),stockquantity int,price int);

create table myorders(mid int not null primary key,orderid int,id int,pid int,pname varchar(30),description varchar(200),price int,address varchar(100),email varchar(30),image varchar(10000),datedetails date,category varchar(30));

create table discount(did int not null primary key,id int,percentage int,image varchar(9000));

insert into product values(101,"Bed with Storgae","Wakefit Taurus Engineered Wood Bed with Storage (78*60inch) / (198.1*152.4cm) ",10999,"assets/images/1.jpg",10,20,"Beds&Mattresses");
insert into product values(102," Soft Mattress","Luxuriously Ultra Soft Mattress for your Mansion",19499,"assets/images/1609410500soft-mattress.png",20,30,"Beds&Mattresses");
insert into product values(103,"Welcome door Mat","Brown PVC Slogan Door Mat",299,"assets/images/brown-pvc-slogan-door-mat-by--home-brown-pvc-slogan-door-mat-by--home-fnle1v.jpg",10,20,"Beds&Mattresses");
insert into product values(104,"Casual Carpet","Abstract Pattern Polyester Fur 5 x 2 Feet Shaggy Bedside Runner",599,"assets/images/polyester-heavy-quality-shaggy-fur-bed-side-runner-by-hosta-homes-polyester-heavy-quality-shaggy-fur-fqjsps.webp",30,40,"Beds&Mattresses");
insert into product values(105,"Bedroom carpet","Black Polyester Geometric 3 x 5 Feet Machine Made Carpet",699,"assets/images/black-polyester-geometric-3--x-5--feet-machine-made-carpet-by--home-black-polyester-geometric-3--x-5-dgzx5o.webp",100,20,"Beds&Mattresses");
insert into product values(106,"Bedroom Mat","Beige Microfibre Shag 3 x 5 Feet Machine Made Carpet", 299,"assets/images/beige-microfiber-machine-made-5x3-feet-carpet-by--home-beige-microfiber-machine-made-5x3-feet-carpet-mdz13n.jpg",70,30,"Beds&Mattresses");
insert into product values(107,"Floor Carpet","Brown Polyester Vintage 4 x 6 Feet Machine Made Carpet", 699,"assets/images/brown-polyester-vintage-4--x-6--feet-machine-made-carpet-by--home-brown-polyester-vintage-4--x-6--fe-unxqff.webp",78,25,"Beds&Mattresses");
insert into product values(201,"Pillows","Solid 300 Tc 100 % Cotton Bedsheet With 2 Pillow Covers", 499,"assets/images/mauve-solid---cotton--tetra-pleat-mauve-300tc-cotton-bed-sheet-with-2-pillow-covers--by-sadyaska-mau-5etcox.webp",65,10,"Furnishings");

insert into product values(202,"Gray bedsheets","Grey Solid 300 Tc 100 % Cotton Bedsheet With 2 Pillow Covers", 2999,"assets/images/grey-solid---cotton--dreams-wave-grey-300tc-cotton-bed-sheet-with-2-pillow-covers--by-sadyaska-grey--e8kfgj.webp",40,5,"Furnishings");
insert into product values(203,"Polysters covers","Purple Polyester Solid 225 TC 1 Double King Size Bedsheet with 4 Pillow Covers",799,"assets/images/polyester-solid-225-tc-1-double-bedsheet-with-4-pillow-covers-polyester-solid-225-tc-1-double-bedshe-xkotzl.webp",50,7,"Furnishings");
insert into product values(204,"Blue Pillow Civer","Blue 100% Cotton Striped Printed 120 TC 1 Single Bedsheet With 1 Pillow Cover", 899,"assets/images/blue-100--cotton-striped-printed-120-tc-1-single-bedsheet-with-1-pillow-cover-blue-100--cotton-strip-ookqcc.webp",50,18,"Furnishings");
insert into product values(205,"Stylish Covers","Multicolour Geometric 300 TC 100% Cotton Single Bedsheet With 1 Pillow Covers Origami Collection", 699,"assets/images/multicolour-geometric-300-tc-100--cotton-single-bedsheet-with-1-pillow-covers-origami-collection-by--dtaiyt.webp",56,19,"Furnishings");
insert into product values(206,"Pillow Covers","Red 100% Cotton Striped Printed 120 TC 1 Single Bedsheet With 1 Pillow Cover", 599,"assets/images/red-100--cotton-striped-printed-120-tc-1-single-bedsheet-with-1-pillow-cover-red-100--cotton-striped-kykaw5.webp",75,21,"Furnishings");
insert into product values(207,"Cotton Furnishings","Blue Geometric 140 TC Cotton 1 Single Bedsheet With 1 Pillow Cover", 999,"assets/images/blue-geometric-140-tc-cotton-1-single--bedsheet-with-1-pillow-cover-blue-geometric-140-tc-cotton-1-s-h4g49s.jpg",65,22,"Furnishings");

insert into product values(301,"Wardrobe large Size","Kosmo Apex 4 Door Wardrobe With Drawer in Frosty White Colour",4599,"assets/images/kosmo-apex-4-door-wardrobe-in-frosty-white-colour-by-spacewood-kosmo-apex-4-door-wardrobe-in-frosty--bhtt8v.webp",45,25,"Furniture");
insert into product values(302,"Coffee Table","Petunia Teak Wood Coffee Table With Marble Top In Rustic Teak Finish",4999,"assets/images/petunia-solid-wood-coffee-table-with-marble-top-in-rustic-teak-finish---mudramark-by-pepperfry-petun-78zpaf.webp",15,20,"Furniture");
insert into product values(303,"Shoe Cabinet","Hideko 3 Door Shoe Cabinet in Wenge Finish",5499,"assets/images/hideko-3-door-shoe-cabinet-in-wenge-finish---valuewud-hideko-3-door-shoe-cabinet-in-wenge-finish---v-cyycxy.webp",25,30,"Furniture");
insert into product values(304,"Three Seater sofa","Miranda 3 Seater Sofa In Navy Blue Colour",1999,"assets/images/miranda-3-seater-sofa-in-navy-blue-colour-by-woodsworth-miranda-3-seater-sofa-in-navy-blue-colour-by-ee7lmu.webp",45,10,"Furniture");
insert into product values(305,"Night Lamp","Soomin Black Fabric Shade Floor Lamp With Brass Base",5000,"assets/images/soomin-black-fabric-shade-floor-lamp-with-brass-base-by-casacraft-soomin-black-fabric-shade-floor-la-343cx2.webp",34,12,"Furniture");
insert into product values(306,"Single Seater Sofa","Royal Wing Chair in Blue Colour",16000,"assets/images/royal-wing-chair-in-blue-colour-by-dreamzz-furniture-royal-wing-chair-in-blue-colour-by-dreamzz-furn-pitcjr.webp",54,17,"Furniture");
insert into product values(307,"Cloth Bag","Maroon Solid Polyester Foldable 1 Cloth Organiser",6000,"assets/images/maroon-solid-polyester-foldable-1-cloth-organiser-by-hosta-homes-maroon-solid-polyester-foldable-1-c-fabee1.webp",76,10,"Furniture");

insert into product values(401,"Door carpet","Polyester Geometric 30X18 Inches Antiskid Doormat", 299,"assets/images/brown-polyester-geometric--30x18-inches-antiskid-doormat-by-lehar-decor-brown-polyester-geometric--3-uyevxv (1).webp",20,5,"Carpets");
insert into product values(402,"Indoor Mat","grey Cotton Geometric 15x23 inches Super soft Doormat",599,"assets/images/grey-cotton-geometric-15x23-inches-super-soft-doormat-by-status-grey-cotton-geometric-15x23-inches-s-a2pag6.jpg",25,10,"Carpets");
insert into product values(403,"Welcome door Mat","Brown PVC Slogan Door Mat", 399,"assets/images/brown-pvc-slogan-door-mat-by--home-brown-pvc-slogan-door-mat-by--home-fnle1v.jpg",30,10,"Carpets");
insert into product values(404,"Casual Carpet","Abstract Pattern Polyester Fur 5 x 2 Feet Shaggy Bedside Runner",499,"assets/images/polyester-heavy-quality-shaggy-fur-bed-side-runner-by-hosta-homes-polyester-heavy-quality-shaggy-fur-fqjsps.webp",50,5,"Carpets");
insert into product values(405,"Bedroom carpet","Black Polyester Geometric 3 x 5 Feet Machine Made Carpet",599,"assets/images/black-polyester-geometric-3--x-5--feet-machine-made-carpet-by--home-black-polyester-geometric-3--x-5-dgzx5o.webp",20,10,"Carpets");
insert into product values(406,"Bedroom Mat","Beige Microfibre Shag 3 x 5 Feet Machine Made Carpet", 299,"assets/images/beige-microfiber-machine-made-5x3-feet-carpet-by--home-beige-microfiber-machine-made-5x3-feet-carpet-mdz13n.jpg",25,8,"Carpets");
insert into product values(407,"Floor Carpet","Brown Polyester Vintage 4 x 6 Feet Machine Made Carpet",1399,"assets/images/brown-polyester-vintage-4--x-6--feet-machine-made-carpet-by--home-brown-polyester-vintage-4--x-6--fe-unxqff.webp",35,9,"Carpets");

insert into product values(501,"Ceramic Pot","Black Ceramic Cut Designer Floor Planter",700,"assets/images/black-ceramic-cut-designer-floor-planter-by-niyara-black-ceramic-cut-designer-floor-planter-by-niyar-plbfrj.jpg",20,10,"Garden&Outdoor");
insert into product values(502,"Decorative items","White Stone Grace Decorative Pebbles",145,"assets/images/white-stone-grace--decorative-pebbles-by--home-white-stone-grace--decorative-pebbles-by--home-rpkkm6.webp",35,5,"Garden&Outdoor");
insert into product values(503,"Stylish Planter","Black Iron Rickshaw Shape Floor Planter without Pot",599,"assets/images/black-iron-rickshaw-shape-floor-planter-with-1-pot-container-by-justoriginals-black-iron-rickshaw-sh-ldsipk.webp",45,2,"Garden&Outdoor");
insert into product values(504,"Floor Planter","Multicolour Iron Diamond Floor Planter, Set of 3",1099,"assets/images/multicolour-iron-diamond-floor-planter--set-of-3-by-amaya-decors-multicolour-iron-diamond-floor-plan-xj2gez.webp",100,10,"Garden&Outdoor");
insert into product values(505,"Floor Planter","White Fiber Glass Cylindrical Shaped Medium Floor Planter",1199,"assets/images/white-fiber-glass-cylindrical-shaped-medium-floor-planter-by-craftter-white-fiber-glass-cylindrical--ycexwb.webp",200,10,"Garden&Outdoor");
insert into product values(506,"Wall Mounted Planter","Oval (Set of 4) Engineered Wood Wall Hanging Planter",1999,"assets/images/oval--set-of-4--engineered-wood-wall-hanging-planter-by-random-oval--set-of-4--engineered-wood-wall--kigslx.webp",300,5,"Garden&Outdoor");
insert into product values(507,"Hanging Plant","Gold-Toned Metal Hanging Planter",999,"assets/images/gold-toned-metal-hanging-planter-by-tied-ribbons-gold-toned-metal-hanging-planter-by-tied-ribbons-0upssq.jpg",250,10,"Garden&Outdoor");

insert into product values(601,"Washing machine","quicker and easier way to wash clothes",40000,"assets/images/washing machine.jpg",150,20,"Appliances");
insert into product values(602,"Air conditioner","enjoy happily",56000,"assets/images/ac.jpg",100,20,"Appliances");
insert into product values(603,"Samsung tv","Ultra hd 4k Tv",25000,"assets/images/samsung 43 inch.jpg",100,10,"Appliances");
insert into product values(604,"Judge Mixer","Judge Mixer Grinder 550 Watts JEMG 102",4000,"assets/images/45733_JudgeProductImages_1000x1000px_MG-01_1024x1024@2x (1).webp",125,25,"Appliances");
insert into product values(605,"Pressure Cooker","Bajaj Fresh Sip DLX 500 Watt Juicer Mixer Grinder in White Colour",5000,"assets/images/bajaj-fresh-sip-dlx-500-watt-juicer-mixer-grinder-in-white-colour-bajaj-fresh-sip-dlx-500-watt-juice-hfavqx.webp",45,20,"Appliances");
insert into product values(606,"Air purifier","KENT Aura Room Air Purifier 45-Watt with HEPA Technology (White)",7000,"assets/images/kent-aura-room-air-purifier-45-watt-with-hepa-technology--white--kent-aura-room-air-purifier-45-watt-ozc6ce.webp",25,16,"Appliances");
insert into product values(607,"Bluetooth Speakers","Sony Onebox MHC-V90DW 1.0 Channel Wireless Bluetooth Speaker (Black)",6000,"assets/images/sony-onebox-mhc-v90dw-1-0-channel-wireless-bluetooth-speaker--black--sony-onebox-mhc-v90dw-1-0-chann-nlxvoz.webp",120,15,"Appliances");

insert into discount values(11,1,30,"assets/images/360_F_295334437_7PH6byrEfFqqZxzyj84zMGWZuAMILmnI.jpg");
insert into discount values(12,1,20,"assets/images/sign-board-discount-vector-1947183.jpg");
insert into discount values(13,1,10,"assets/images/special-discount-10-off-grunge-260nw-173111078.webp");
insert into discount values(14,1,25,"assets/images/71XtX-MjXJL._SL1500_.jpg");
insert into discount values(15,1,40,"assets/images/pngtree-offer-discount-sale-pink-label-png-image_3588558.jpg");