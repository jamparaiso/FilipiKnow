
local M = {}


--[[
	format for the questions
	refer to the example below
	
			{
			answer =
			imagePath = 
			hint = 
			trivia =
			status = 
		},
	
]]--



--questions for places-------
local placesQuestion = 
{

		{
			answer = "Baguio City",
			imagePath = "images/baguio_city.png",
			hint = [[The summer capital of the Philippines.]],  --multiline string
			trivia =[[Baguio City, approximately 250 kilometers north of Manila, is situated in the Province of Benguet.   The area of the city is 57.5 square kilometers enclosed in perimeter of 30.6 kilometers.]],
			showHint = 1,	
			level = 1,
			status = 1,
		},
{
			answer = "Banaue Rice Rerraces",
			imagePath = "images/banauerice_terraces.png",
			hint = [[it is carved out of the hillside by Ifugao tribes people.]],  --multiline string
			trivia =[[Banaue rice terraces stretch like stepping stones to the sky - some reaching an altitude of 1500m (4920ft). It is considered as one of mankind's greatest engineering feat.If the terraces were laid end to end, they would stretch half way around the world.]],
			showHint = 1,	
			level = 1,
			status = 1,
		},
{
			answer = "Boracay Island",
			imagePath = "images/boracay_island.png",
			hint = [[It is a tropical island surrounded by stunning white sand beaches.]],  --multiline string
			trivia =[[The name Boracay is attributed to different origins. One story says that it is derived from the local word borac which means white cotton with characteristics close to the color and texture of Boracay's white sugary and powdery sand. Another credits the name to local words bora, meaning bubbles, and bocay, meaning white.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Hundred Islands",
			imagePath = "images/hundred_islands.png",
			hint = [[It is located in Alaminos City, Pangasinan.]],  --multiline string
			trivia =[[The islands (124 at low tide and 123 at high tide) are scattered along Lingayen Gulf and cover an area of 1,844 hectares (4,556.62 acres). They are believed to be about two million years old.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Chocolate Hills",
			imagePath = "images/chocolate_hills.png",
			hint = [[It is made up of lime stone formations with encrusted sea shells and corals.]],  --multiline string
			trivia =[[There are over 1200 of these grass-covered limestone mounds. During the dry season, the conical and almost symmetrical hills turn brown which resembles chocolate kisses from Hersheys.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Fort Santiago",
			imagePath = "images/fort_santiago.png",
			hint = [[It is a defense fortress built for Spanish conquistador, Miguel López de Legazpi.]],  --multiline string
			trivia =[[Fort Santiago or Fuerto de Santiago in Spanish has a dark history. Not only was it a fortress, it was also a dungeon. Through the three centuries of Spanish tyranny, a good number of Filipinos were imprisoned, tortured, and killed in an underground dungeon that got flooded during high tide. Today, the dungeon remains shut and inaccessible.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Vigan City",
			imagePath = "images/vigan_city.png",
			hint = [[It is well-known for its cobblestone walkways, horse-drawn carriages and mansions of yester-years.]],  --multiline string
			trivia =[[Vigan holds a regal character, owing to its grandeur and importance in Philippine history.Its cultural heritage is very much evident and alive. Its architecture exhibits a unique blend of Asian, Mexican,and Spanish influences.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Palawan Underground River",
			imagePath = "images/puertoprincesa_undergroundriver.png",
			hint = [[The longest underground river system in the world that is accessible to mankind]],  --multiline string
			trivia =[[The underground river contains second floor, which leads to small waterfalls inside the cave. It also has cave dome that measures 300 meters above the underground river. It also has different and interesting rock formations,  a deep water hole, many river channels, large bats, marine creatures, and more.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Luneta Park",
			imagePath = "images/luneta_park.png",
			hint = [[It is an historical urban park located along Roxas Boulevard, City of Manila.]],  --multiline string
			trivia =[[ Luneta is also an important site in Philippine history. The execution of national hero Dr. José Rizal on December 30, 1896, sparked the 1898 Philippine Revolution against the Kingdom of Spain. The area was officially renamed Rizal Park in his honour, and the monument enshrining his remains serves as the symbolic focal point of the Park. ]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Enchanted Kingdom",
			imagePath = "images/enchanted_kingdom.png",
			hint = [[It is a theme park in the Philippines.]],  --multiline string
			trivia =[[he park was conceptualized by the Landmark Entertainment Group and while the entrance is somewhat resemblent of Disneyland, the rest of the park is modeled after Universal Studios. It was built at a cost of ?1.2 billion, or $27,069,600 USD (2013). The park first opened to the public on October 19, 1995.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Baguio Cathedral",
			imagePath = "images/baguio_cathedral.png",
			hint = [[It is a Roman Catholic cathedral located at Cathedral Loop adjacent to Session Road in Baguio City]],  --multiline string
			trivia =[[Baguio Cathedral is dedicated to the Blessed Virgin Mary under the title of Our Lady of Atonement, its distinctive pink exterior, twin spires and stained glass windows make it a popular tourist attraction in Baguio. It served as an evacuation centre under the Japanese Occupation during Second World War.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Barasoain Church",
			imagePath = "images/barasoain_church.png",
			hint = [[It is a Roman Catholic church built in 1630 in Malolos City, Bulacan. ]],  --multiline string
			trivia =[[Barasoain church is also known as Our Lady of Mt. Carmel Parish.The term Barasoain was derived from Barásoain in Navarre, Spain to which the missionaries found the place in Malolos in striking similarity. When the Spanish-Filipino revolution broke-out, the Spanish authorities coined the term baras ng suwail, which means dungeon of the defiant because the church was a meeting place for anti-Spanish and anti-colonial illustrados.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Basilica De Sto. Niño",
			imagePath = "images/basilicade_stonino.png",
			hint = [[It is a 16th century church in the heart of Cebu City.]],  --multiline string
			trivia =[[ It is the oldest Roman Catholic church established in the country, purportedly built on the spot where the image of the Santo Niño de Cebú, a statue depicting the Holy Child Jesus was found in 1565 by Spanish explorers led by Miguel Lopez de Legazpi.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Dauis Church",
			imagePath = "images/dauis_church.png",
			hint = [[It is located at the heart of the municipality of Dauis in the island of Panglao.]],  --multiline string
			trivia =[[ The church was founded by the Jesuits Fr. Diego de Ayala and Joseph Gregorio.The church's patron saint, the Virgin of the Assumption, is said to possess miraculous powers. An old legend relates that once, when the town was invaded by pirates, the people of Dauis locked themselves into the church. ]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Manila Cathedral",
			imagePath = "images/manila_cathedral.png",
			hint = [[It is a Roman Catholic basilica located in Manila.]],  --multiline string
			trivia =[[Manila Cathedral is dedicated to the Blessed Virgin Mary as Our Lady of the Immaculate Conception, the Principal Patroness of the Philippines. The cathedral serves as the seat of the Archbishop of the Roman Catholic Archdiocese of Manila, currently Luis Antonio Cardinal Tagle, the de facto Primate of the Philippines.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Miag-ao Church",
			imagePath = "images/miagao_church.png",
			hint = [[It is also known as the Sto. Tomas de Villanueva Church in Miag-ao.]],  --multiline string
			trivia =[[It is completed in 1797, the church is famous for the artistic sculptural relief carved on its facade. In 1993, the church was designated as one best examples of the Baroque Churches of the Philippines and included in the list of World Heritage Sites by UNESCO.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Our Lady of Manaoag Shrine",
			imagePath = "images/ourladyofmanaoag_shrine.png",
			hint = [[It is also known as the Shrine of the Nuestra Senora de Manaoag.]],  --multiline string
			trivia =[[The most visited religious desitnation north of Manila, manaoag is coined from the word taoag (tawag) or to call when centuries ago, a farmer on his way to his farm one daybreak heard the virgin mary calling him from the top of the tamarind tree (where the church is right now) instructing him to initiate the construction of the church. These days, thousands of devotees visit the town of Manaoag each day in response to the Virgin Mary's tawag or call.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Paoay Church",
			imagePath = "images/paoay_church.png",
			hint = [[It is a historical church located in the town of Paoay in Ilocos Norte.]],  --multiline string
			trivia =[[It is known as the “Earthquake Baroque” church in the Philippines, Paoay church was built of baked bricks, coral rocks, salbot (tree sap) and lumber, and has 24 carved massive buttresses for support.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{			answer = "Quiapo Church",
			imagePath = "images/quiapo_church.png",
			hint = [[It is a prominent Roman Catholic Latin-rite basilica located in the District of Quiapo in the City of Manila.]],  --multiline string
			trivia =[[The basilica is famous home for the shrine of the Black Nazarene, a dark statue of Jesus Christ many faithfully claim to be miraculous. The parish is under the Archdiocese of Manila and its current rector is Rev. Msgr. Jose Clemente Ignacio.]],
			showHint = 1,
			level = 2,
			status = 1,
		},

{			answer = "San Sebastian Church",
			imagePath = "images/san_sebastian.png",
			hint = [[It is a Roman Catholic minor basilica in Manila.]],  --multiline string
			trivia =[[San Sebastian Church was completed in 1891, it is noted for its architectural features. An example of the revival of Gothic architecture in the Philippines, it has been recognized by the UNESCO as the only all-steel church or basilica in Asia.]],
			showHint = 1,
			level = 2,
			status = 1,
		},

{			answer = "San Agustin Church",
			imagePath = "images/sanagustin_church.png",
			hint = [[It is a Roman Catholic church located inside the historic walled city of Intramuros in Manila.  ]],  --multiline string
			trivia =[[San Agustin Church is completed by 1607, it is the oldest church currently standing in the Philippines. No other surviving building in the Philippines has been claimed to pre-date San Agustin Church. ]],
			showHint = 1,
			level = 2,
			status = 1,
		},

{			answer = "San Jose Church",
			imagePath = "images/sanjose_church.png",
			hint = [[The first church in the city of Iloilo.]],  --multiline string
			trivia =[[It was built by the Jesuits around 1607 to serve the needs of the military stationed in Punta, as Iloilo was then called. However, on 29 April 1617, the Augustinians established San Jose, a house of the order.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Binondo Church",
			imagePath = "images/binondo_church.png",
			hint = [[It is also known as Minor Basilica of St. Lorenzo Ruiz and Our Lady of the Most Holy Rosary Parish.]],  --multiline string
			trivia =[[This church was founded by Dominican priests in 1596 to serve their Chinese converts to Christianity.The original building was destroyed in 1762 by British bombardment. A new granite church was completed on the same site in 1852 however it was greatly damaged during the Second World War, with only the western facade and the octagonal bell tower surviving.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Baclayon Church",
			imagePath = "images/baclayon_church.png",
			hint = [[It is the second oldest stone church in the Philippines.]],  --multiline string
			trivia =[[The Baclayon Church, just six kilometers away from Tagbilaran City, Bohol.Constructed in 1595 by the Jesuit priests, it is still intact and houses important relics and images reminiscent of the historic Roman Catholic religion in the country.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Santa Maria Church",
			imagePath = "images/santamaria_church.png",
			hint = [[It is built with bricks and have huge buttress.]],  --multiline string
			trivia =[[Santa Maria Church was built in 1765 and located on a hill in the town in the province of Ilocos Sur. The church was designated as a UNESCO World Heritage Site on December 11, 1993 as part of the Baroque Churches of the Philippines, a collection of four Baroque Spanish-era churches.]],
			showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Anguib Beach",
			imagePath = "images/anguib_beach.png",
			hint = [[Most pristine beach in Sta. Ana,Province of Cagayan .]],  --multiline string
			trivia =[[Anguib Beach is also known as the Boracay of the North for having the fine white sand and pristine blue waters.The beach is very suitable for scuba diving, jet ski ridding, motorboating, and other watercrafting and sports.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Apo Island",
			imagePath = "images/apo_island.png",
			hint = [[It is one of the world's best known community-organized marine sanctuaries.]],  --multiline string
			trivia =[[Apo Island is a volcanic island covering 12 hectares in land area, 7 kilometers off the southeastern tip of Negros Island and 30 kilometers south of the Negros Oriental capital of Dumaguete City in the Philippines. The name Apo was derived from the a Filipino word which literally means, Grandchild.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Bantayan Island",
			imagePath = "images/bantayan_island.png",
			hint = [[It is an island located in the Visayan Sea.]],  --multiline string
			trivia =[[Bantayan islands are considered Cebu’s fishing ground from where boatloads of fish.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Batanes Island",
			imagePath = "images/batanes_island.png",
			hint = [[It is the smallest province in the Philippines.]],  --multiline string
			trivia =[[It is the northernmost province of the Philippines and is also the smallest province, both in terms of population and land area. The provincial capital is Basco on Batan Island.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Bulubadiangan Island",
			imagePath = "images/bulubadiangan_island.png",
			hint = [[It is also known as sandbar island.]],  --multiline string
			trivia =[[It is a popular island attraction in Concepcion, Iloilo. Many local and foreign tourists visit Sandbar Island for its clear blue waters and long shifting white sandbar, which would shift from left to right depending on the direction of the wind. ]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Buluan Island",
			imagePath = "images/buluan_island.png",
			hint = [[It is a famous beach destination among Sibugaynons.]],  --multiline string
			trivia =[[Buluan Island, located some 7 kilometers from the port of Ipil, features white sand beach and clear blue waters. Away from commercialization, the island offers seclusion and tranquility.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Camiguin Island",
			imagePath = "images/camiguin_island.png",
			hint = [[It is a pear-shaped volcanic island in the northern tip of Mindanao.]],  --multiline string
			trivia =[[Camiguin is the smallest province in Northern Mindanao, with its land area pegged at 29,187 hectares.The island plays host to seven volcanoes, including the still-active Mount Hibok-Hibok.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Corregidor Island",
			imagePath = "images/corregidor_island.png",
			hint = [[It is an island located at the entrance of Manila Bay in southwestern part of Luzon Island .]],  --multiline string
			trivia =[[Corregidor island also known as the Rock, it was a key bastion of the Allies during the war.This island fortress stands as a memorial for the courage, valor, and heroism of its Filipino and American defenders]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Mactan Island",
			imagePath = "images/mactan_island.png",
			hint = [[It is a densely populated island located a few kilometres from Cebu Island.]],  --multiline string
			trivia =[[The island is part of Cebu Province and it is divided into Lapu-Lapu City and the municipality of Cordova. The island is separated from Cebu by the Mactan Channel which is crossed by two bridges: the Marcelo Fernan Bridge and the Mactan-Mandaue Bridge.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Pamalican Island",
			imagePath = "images/pamalican_island.png",
			hint = [[It is a small island of the Cuyo Islands in the Sulu Sea, between Palawan and Panay.]],  --multiline string
			trivia =[[The island is set in the middle of a 7 square-kilometer coral reef. It has a length of 2.5 kilometers, and measures only 500 meters at its widest point.The island is private property and belongs in totality to 7 Seas Resort owned by the Sorianos. It is part of the high-end resort group, Aman Resorts, under the name Amanpulo.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Panglao Island",
			imagePath = "images/panglao_island.png",
			hint = [[It is located southwest of the island of Bohol and east of Cebu.]],  --multiline string
			trivia =[[Panglao Island is a popular tourist destination in the Philippines and includes several small islands like Gak-ang, Pontod, and Balicasag.It is similar to Boracay you can find an amazing white beach and crystal clear water.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Siargao Island",
			imagePath = "images/siargao_island.png",
			hint = [[It is the surfing capital of the Philippines.]],  --multiline string
			trivia =[[Siargao is a tear-drop shaped island in the Philippine Sea situated 800 kilometers southeast of Manila in the province of Surigao del Norte.One of the best known surfing waves on Siargao and the Philippines, with a worldwide reputation for thick, hollow tubes is Cloud 9. This right-breaking reef wave is the site of the annual Siargao Cup.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Dakak Beach",
			imagePath = "images/dakak_beach.png",
			hint = [[It  is most known for its beautfiully shaped cove and powdery white sand, and as a diving mecca in Mindanao.]],  --multiline string
			trivia =[[Dakak Beach is the closest place to paradise one could ever experience, with its beauty and serenity. Dakak started operating on 1988, was conveniently positioned in the southern part of the Philippines and surrounded by mountains in its west. Situated at Taguilon, Dapitan City, Zamboanga del Norte, Dakak tactfully eludes the typhoon belt, making it anideal all-season destination for travelers. ]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Tubbataha Reefs",
			imagePath = "images/tubbataha_reefs.png",
			hint = [[It is a remote island over 90 nautical miles from Palawan province .]],  --multiline string
			trivia =[[Tubbataha Reefs has one of the most amazing underwater scenery in the world with its reef platforms, sandy lagoons, steep walls, and staggering amount of marine life.It is world-famous as a UNESCO World Heritage Site.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Honda Bay",
			imagePath = "images/honda_bay.png",
			hint = [[It is a bay on the eastern shore of the island of Palawan.]],  --multiline string
			trivia =[[Honda Bay is also known as the The Last Frontier. It is host to several of the most exclusive resorts in the country. With its white sand beaches, magnificent landscape, fishing villages and rainforests, it is a favorable destination of adventurers and nature lovers.]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Pagudpud Beach",
			imagePath = "images/pagudpud_beach.png",
			hint = [[It is the place like Hawaii.]],  --multiline string
			trivia =[[Pagudpud is located at the topmost part of Luzon, the strong winds and waves can be compared to that of Hawaii which makes this place often visited by surfers. Pagudpud also has long continuous white sands and inviting beach waters for people looking to just swim.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Busuanga Island",
			imagePath = "images/busuanga_island.png",
			hint = [[It is the largest island in the Calamian Group in the province of Palawan.]],  --multiline string
			trivia =[[Busuanga Island is mainly known as a recreational diving location due to the twelve World War II Japanese wrecks that were sunk by American navy bombings in Coron Bay, a natural anchorage near the town center of Coron, on September 24, 1944. ]],
			showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Gigantes Island",
			imagePath = "images/gigantes_island.png",
			hint = [[It is an island chain in northeastern Iloilo.]],  --multiline string
			trivia =[[ The Gigantes Islands consist of about ten islands; the two largest are Gigantes Norte (North Gigantes) and Gigantes Sur (South Gigantes).The Gigantes group used to be called Sabuluag or Salauag, which is the name of a species of tree endemic to the islands.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Tabon Island",
			imagePath = "images/tabon_island.png",
			hint = [[It is an island located in the province of Aklan.]],  --multiline string
			trivia =[[The island is enclosed in Tinagong Dagat (Hidden sea), a bay in the province with a narrow opening to the Sibuyan Sea.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

{			answer = "Calayan Island",
			imagePath = "images/calayan_island.png",
			hint = [[It is located in the South China Sea, in Luzon Strait north of Luzon Island.]],  --multiline string
			trivia =[[Calayan Island is the largest of the Babuyan Islands. Fuga Island, the fifth island within the Babuyan Islands, is part of Aparri municipality.]],
			showHint = 1,
			level = 3,
			status = 1,
		},						
	}
M.placesQuestion = placesQuestion



--questions for people--------
local peopleQuestion = 
{

		{
			answer = "Efren Reyes",
			imagePath = "images/efren_reyes.png",
			hint = [[He is more popularly known in the world of pool as “The Magician.”]],  --multiline string
			trivia =[[He is the first non-American winner of the US Open Nine Ball Championship and named by the United States Billiards Media Association’s (USBMA) the best player of the decade. Efren is the first player in WPA history to win world championships in two different disciplines.]],
			showHint = 1,	
			level = 1,
			status = 1,
		},
{
			answer = "Eugene Torre",
			imagePath = "images/eugene_torre.png",
			hint = [[He is a chess grand master.]],  --multiline string
			trivia =[[He is considered the strongest chess player the Philippines produced during the 1980s and 1990s.He has the distinction of being the first Asian to earn the title of International Grandmaster. He accomplished the feat at the age of 22 when he won a bronze medal on board 1 at the 21st World Chess Olympiad held in Nice, France in 1974.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Francisco Bustamante",
			imagePath = "images/francisco_bustamante.png",
			hint = [[He is a Filipino professional pocket billiards (pool) player from Tarlac.]],  --multiline string
			trivia =[[The 2010 World Nine-ball Champion, nicknamed Django, after the lead character of the film of the same name, and sometimes also called Bustie, especially in the United States.the world’s number-one billiard player in 1998.Bustamante had 34 local and international medals, including one at the 2001 World Pool Masters and his recent one, at the 2010 World 9-Ball Championship in Doha, Qatar.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Gabriel Elorde",
			imagePath = "images/gabriel_elorde.png",
			hint = [[He became the only Asian to be inducted into the International Boxing Hall of Fame.]],  --multiline string
			trivia =[[He was dubbed as the greatest world junior lightweight boxing champion in WBC history and defended his belt for ten bouts over a span of four years, making him the longest-reigning champion ever in his division.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "lydia De Vega",
			imagePath = "images/lydia_devega.png",
			hint = [[She was the Asia’s fastest woman in the 1980s.]],  --multiline string
			trivia =[[She won the gold medal in the 100-meter dash at both the 1982 New Delhi Asiad and the 1986 Seoul Asiad.De Vega also won the gold in the 100 meters at the Southeast Asian Games (1987, 1991 and 1993). She has twice won both the 100 and 200 meter golds in the Asian Athletics Championships - 1983 and 1987. She holds both Philippine and Southeast Asian records with her personal best of 11.28 seconds.She is currently Singapore’s track and field coach.]],
			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Onyok Velasco",
			imagePath = "images/onyok_velasco.png",
			hint = [[He is a Filipino boxer and comedian from Bago City.]],  --multiline string
			trivia =[[He is a Filipino boxer and comedian from Bago City, Negros Occidental, Philippines. He competed in the Men's 48 kg (light-flyweight) category at the 1996 Summer Olympics in Atlanta, and took home the silver medal, the Philippines' only medal of the games.]],
showHint = 1,
			level = 1,
			status = 1,
		}, 
{
			answer = "Paeng Nepomuceno",
			imagePath = "images/paeng_nepomuceno.png",
			hint = [[He is a six-time world bowling champion and is acknowledged worldwide as the greatest international bowler in the history of the sport.]],  --multiline string
			trivia =[[He was the youngest to win a World Cup, at the age of 19. Paeng has the most Bowling World Cup wins and has won the most the number of bowling tournament titles (120).He was the only Filipino athlete who has been given the highest award to three Philippine presidents.]],
showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Pancho Villa",
			imagePath = "images/pancho_villa.png",
			hint = [[He is the greatest Asian fighter in boxing history.]],  --multiline string
			trivia =[[He was never knocked out in his entire boxing career, which ended with his sudden death at the age of 23 from complications following a tooth extraction. realname: Francisco Guilledo,Villa stood only 5'1 and fought in over 100 bouts.]],
showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Robert Jaworski",
			imagePath = "images/robert_jaworski.png",
			hint = [[Known as The Big J and called The Living Legend during his playing days.]],  --multiline string
			trivia =[[Jaworski is arguably the Philippines' most popular basketball player of all time. The Most Valuable Player in 1978.He was also popular and charismatic that in 1998, he ran in the local elections as a senatorial candidate which he won.-Jaworski was a former playing coach—the first ever in the PBA in 1985—for Ginebra San Miguel. In 2000 he was honored as one of the PBA’s 25 Greatest Players of all time.]],
showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Manny Pacquiao",
			imagePath = "images/manny_pacquiao.png",
			hint = [[He is also the second highest paid athlete in the world.]],  --multiline string
			trivia =[[Emmanuel Manny Dapidran Pacquiao is a Filipino professional boxer and politician. He is the first and only eight-division world champion, in which he has won ten world titles, as well as the first to win the lineal championship in four different weight classes.]],
showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Carlos Garcia",
			imagePath = "images/carlos_garcia.png",
			hint = [[The man known for his Filipino First policy was a native of Talibon, Bohol.]],  --multiline string
			trivia =[[Gifted with excellence in poetry in the Cebuano dialect, Garcia was given the appellations Prince of Visayan Poets and Bard from Bohol. He was also blessed with oratorical ability.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Corazon Aquino",
			imagePath = "images/cory_aquino.png",
			hint = [[She was Asia's first female President.]],  --multiline string
			trivia =[[The widow of popular opposition senator Benigno “Ninoy” Aquino Jr., she became the focus of the opposition to the autocratic rule of President Ferdinand Marcos after Ninoy was assassinated at then Manila International Airport on his return from exile on 21 August 1983.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Elpidio Quirino",
			imagePath = "images/elpidio_quirino.png",
			hint = [[He was a Filipino politician, and the sixth President of the Philippines.]],  --multiline string
			trivia =[[A lawyer by profession, Quirino entered politics when he became a representative of Ilocos Sur from 1919 to 1925. He was then elected as senator from 1925–1931. In 1934, he became a member of the Philippine independence commission that was sent to Washington, D.C., which secured the passage of Tydings–McDuffie Act to American Congress.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Emilio Aguinaldo",
			imagePath = "images/emilio_aguinaldo.png",
			hint = [[He achieved independence of the Philippines from Spain.]],  --multiline string
			trivia =[[Revolutionary leader Emilio Aguinaldo was born on March 22, 1869, in Kawit, Cavite, Philippines. In 1898, he achieved independence of the Philippines from Spain and was elected the first president of the new republic under the Malolos Congress.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Ferdinand Marcos",
			imagePath = "images/ferdinand_marcos.png",
			hint = [[He Holds the presidency of the Philippines for 20 years.]],  --multiline string
			trivia =[[A lawyer, a member of the Philippine House of Representatives (1949-1959) and a member of the Philippine Senate (1959-1965), Ferdinand Marcos became the president of the Philippines in 1966, a post he held until 1986, when his people rose against his dictatorial rule and he fled.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Fidel Ramos",
			imagePath = "images/fidel_ramos.png",
			hint = [[The 12TH PRESIDENT OF THE REPUBLIC OF THE PHILIPPINES (1992-1998).]],  --multiline string
			trivia =[[Remembered for steadfastly promoting the principles of people empowerment and global competitiveness.He quickly led the nation out of darkness in 1993, putting an end to the power crisis that crippled Filipino homes and industries for two years.  He pursued, focused and converged programs to fight poverty.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Gloria Arroyo",
			imagePath = "images/gloria_arroyo.png",
			hint = [[He was a controversial leader who resisted several military coups.]],  --multiline string
			trivia =[[She assumed the presidency after the resignation of Joseph Estrada in 2000 and maintained power for 10 years.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Joseph Estrada",
			imagePath = "images/joseph_estrada.png",
			hint = [[He became a national politician when he took a seat in the Philippine Senate in 1987.]],  --multiline string
			trivia =[[Joseph Estrada was born on April 19, 1937, in Manila, Philippines. Over the course of his prolific film career, he has acted the lead role in more than 80 films and produced over 70. In 1992, he ran for vice president and won. In 1998 he became president of the Philippines. In 2001 he was arrested and imprisoned for six years. He ran for re-election in 2010, but lost to Benigno Aquino III.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Manuel Roxas",
			imagePath = "images/manuel_roxas.png",
			hint = [[He was a part of the convention that drew up a constitution under the revised Philippine Independence.]],  --multiline string
			trivia =[[Manuel Roxas was a part of the convention that drew up a constitution under the revised Philippine Independence and Commonwealth Act and served as secretary of finance in the Commonwealth. He was elected president of the Commonwealth in 1946 as the nominee of the liberal wing of the Nacionalista Party, and when independence was declared on July 4, he became the first president of the new republic.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Jose Laurel",
			imagePath = "images/jose_laurel.png",
			hint = [[He was the third president of the Republic of the Philippines.]],  --multiline string
			trivia =[[An Associate Justice of the Supreme Court before becoming president, he was also an educator, having founded the Lyceum of the Philippines.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Ninoy Aquino",
			imagePath = "images/ninoy_aquino.png",
			hint = [[His popularity was greatly due to his daring criticism of the Marcos regime.]],  --multiline string
			trivia =[[Ninoy Aquino was dead at the age of 50. Beside him, Rolando Galman also lay dead. Ferdinand Marcos's regime would blame Galman for killing Aquino - but few historians or citizens of the Philippines give any credence to that claim.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Noynoy Aquino",
			imagePath = "images/noynoy_aquino.png",
			hint = [[The 15th President of the Republic of the Philippines.]],  --multiline string
			trivia =[[Benigno Simeon Aquino III, has come to stand for Filipinos’ reinvigorated passion to build a nation of justice, peace, and inclusive progress.The only son of democracy icons Senator Benigno “Ninoy” Aquino and President Corazon Aquino—has in different junctures throughout his life responded to the challenge of acting with and serving the Filipino people.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Sergio Osmena",
			imagePath = "images/sergio_osmena.png",
			hint = [[He was a Chinese Filipino politician who served as the 4th President of the Philippines from 1944 to 1946.]],  --multiline string
			trivia =[[A founder of Nacionalista Party, he was the first Visayan to become President of the Philippines.He was Vice President under Manuel L. Quezon, and rose to the presidency upon Quezon's death in 1944, being the oldest Philippine president to hold office at age 65.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Diosdado Macapagal",
			imagePath = "images/diosdado_macapagal.png",
			hint = [[He was the first poor man to become president of the Philippines.]],  --multiline string
			trivia =[[Diosdado Pangan Macapagal was the first poor man to become president of the Philippines. He was aptly tagged Man of the Masses and the Incorruptible for his unquestionable integrity.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Ramon Magsaysay",
			imagePath = "images/ramon_magsaysay.png",
			hint = [[He was elected to the Philippine House of Representatives in 1946.]],  --multiline string
			trivia =[[Ramon Magsaysay was the third president of the Philippines (1953–57), best known for successfully defeating the communist-led Hukbalahap (Huk) movement in his country and his popular appeal. He died in his country in 1957.]],
showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Andres Bonifacio",
			imagePath = "images/andres_bonifacio.png",
			hint = [[He was a Filipino revolutionary leader and patriot, known as the Father of the Philippine Revolution.]],  --multiline string
			trivia =[[He was one of the founders and organizers of the Kataastaasan Kagalang-galang na Katipunan ng mga Anak ng Bayan or Katipunan, although he was not its first supremo or leader.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Antonio Luna",
			imagePath = "images/antonio_luna.png",
			hint = [[He was the brother of the famous painter Juan Luna.]],  --multiline string
			trivia =[[Antonio Luna studied Bachelor of Arts at the Ateneo Municipal de Manila, studied pharmacy at the Univerity of Santo Tomas, but finished it in Barcelona, Spain. He obtained his Doctor of Medicine at the Central University of Madrid, and studied further in France and Belgium.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Apolinario Mabini",
			imagePath = "images/apolinario_mabini.png",
			hint = [[was undoubtedly the most profound thinker and political philosopher that the Pilipino race ever produced.]],  --multiline string
			trivia =[[He was the leading adviser of Aguinaldo, and was the author of the latter's many able decrees and proclamations. Mabini's official position was President of the Council of Secretaries, and he also held the post of Secretary of the Exterior.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Diego Silang",
			imagePath = "images/diego_silang.png",
			hint = [[He was the first major revolution waged against the Spaniards was waged by him.]],  --multiline string
			trivia =[[He aim was the creation of an Ilocano nation. This vision began when he personally witnessed the many abuses of the Spanish government and the Roman Catholic Church not only in Ilocos but wherever he traveled as courier for Vigan’s parish priest, delivering letters and documents to Manila and back.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Emilio Jacinto",
			imagePath = "images/emilio_jacinto.png",
			hint = [[The soul and brains (intelligence) of the Katipunan by Andres Bonifacio, the Father of Philippine Revolution,.]],  --multiline string
			trivia =[[Supremo of the secret-society-turned-revolutionary-national-government Kagalanggalangang Katipunan nang manga Anak nang Bayan (KKK). Though born in poverty, Jacinto was innately intelligent and had the luck to be educated in good schools through the kindness of his uncle.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Epifanio Delos Santos",
			imagePath = "images/epifanio_delossantos.png",
			hint = [[sometimes known as Don Pañong or Don Panyong..]],  --multiline string
			trivia =[[He was a noted Filipino historian, literary critic, art critic, jurist, prosecutor, antiquarian, archivist, scholar, painter, poet, musician,musicologist, philosopher, philologist, bibliographer, translator, journalist, editor, publisher, paleographer, ethnographer, biographer, researcher, civil servant, patriot and hero.Epifanio was considered one of the best Filipino writers in Spanish of his time and regarded as a literary genius.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Francisco Balagtas",
			imagePath = "images/francisco_balagtas.png",
			hint = [[He was a very influential poet and orator and many consider him to be the Filipino William Shakespeare.]],  --multiline string
			trivia =[[He is widely known by his pen name Francisco Balagtas. While there are a number of Filipino poets and writers who have gained success, Baltazar is considered to be one of the premier poets of his culture. His many pieces of literature and poetry have had a tremendous influence on Filipino culture and he is still highly regarded within the culture as very instrumental literary figure.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Graciano Lopez Jaena",
			imagePath = "images/graciano_lopezjaena.png",
			hint = [[Founder and first editor of the newspaper La Solidaridad.]],  --multiline string
			trivia =[[He was a journalist, orator, revolutionary, and national hero from Iloilo, the Philippines, who is well known for his newspaper, La Solidaridad. Lopez-Jaena known as the great Orator of the Propaganda; Prince of Filipino Orators:.At the age 18 he wrote the satirical story Fray Botod which depicted a fat and lecherous priest.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Gregoria De Jesus",
			imagePath = "images/gregoria_dejesus.png",
			hint = [[Lakambini of the Katipunan.]],  --multiline string
			trivia =[[Born in CalooCan City, on May 9, 1875. was the Maria Elena in a Santacruzan in Caloocan when she first met Andres Bonifacio who was introduced by her cousin Teodoro Plata, also a katipunero.Right after Gregoria de Jesus and Andres Bonifacio were maried in March 1893, Oriang was immediately sworn into the Katipunan and she took the name Lakambini. As wife of the Supremo, she was kept the seal of the Society and its secret lists of recruits and supporters. The town beauty married not only the Supremo of the Katipunan but the cause of liberty.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Gregorio Aglipay",
			imagePath = "images/gregorio_aglipay.png",
			hint = [[He was a former Catholic priest who became the first head of the Iglesia Filipina Independiente.]],  --multiline string
			trivia =[[He was a Protestant sect in the form of a national church in the Philippines.Known for inciting patriotic rebellion among the Filipino clergy, he was also a political activist who became acquainted with Isabelo de los Reyes, who would start a Protestant church named after Aglipay in 1902.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Gregorio Del Pilar",
			imagePath = "images/gregorio_delpilar.png",
			hint = [[Known as Boy General.]],  --multiline string
			trivia =[[Gregorio del Pilar y Sempio was one of the youngest generals in the history of Philippine Revolutionary Forces during the revolution and Philippine-American War. Gregorio del Pilar was born on November 14, 1875 to Felipa Sempio and Fernando H. del Pilar. He was the nephew of the popular propagandist Marcelo H. del Pilar and Toribio H. del Pilar.  At the age of 20 in 1896.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Jose Rizal",
			imagePath = "images/jose_rizal.png",
			hint = [[the national hero of the Philippines and pride of the Malayan race.]],  --multiline string
			trivia =[[Having traveled extensively in Europe, America and Asia, he mastered 22 languages. These include Arabic, Catalan, Chinese, English, French, German, Greek, Hebrew, Italian, Japanese, Latin, Malayan, Portuguese, Russian, Sanskrit, Spanish, Tagalog, and other native dialects.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Lapu lapu",
			imagePath = "images/lapu_lapu.png",
			hint = [[he defeated Magellan.]],  --multiline string
			trivia =[[Lapu Lapu lived on Mactan Island and soon became the chief of his people - a chief who helped his people stand on their own and fight for independence.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Macario Sakay",
			imagePath = "images/macario_sakay.png",
			hint = [[He was a Filipino revolutionist who continued Philippine resistance to American rule even after the capture of General Emilio Aguinaldo.]],  --multiline string
			trivia =[[Sakay is famously known to have established the Tagalog Republic in the northern part of the Philippines.Sakay’s experience in acting opened his eyes to the cruelty and injustice that was then inflicted by the tyrannical Spanish government over the native Filipino-indios.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Mariano Ponce",
			imagePath = "images/mariano_ponce.png",
			hint = [[Filipino physician, writer, and active member of the Propaganda Movement.]],  --multiline string
			trivia =[[A brilliant journalist, he assisted Lopez Jaena in founding the publication “La Solidaridad.” Secretary General and Diplomatic agent of General Aguinaldo in Japan where he purchased arms for the  Philippine Revolution.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Melchora Aquino",
			imagePath = "images/melchora_aquino.png",
			hint = [[Also known s Tangdang Sora.]],  --multiline string
			trivia =[[Melchora was noticeably literate and highly intelligent at a very early age, even though she was never afforded the opportunity to go to school.In addition to her intelligence, Melchora was also a very talented singer who performed at local events. She also was known for singing at Mass when she attended church.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Panday Pira",
			imagePath = "images/panday_pira.png",
			hint = [[First Filipino cannon-maker.]],  --multiline string
			trivia =[[His name literally translates as Blacksmith Pira, panday being the Filipino word for blacksmith.He forged the cannons which Rajah Sulayman used in defending the Muslim Kingdom of Manila against the Spanish invaders. Born in one of the islands in Southern Philippines in 1483. He died in 1576 at the age of 88.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Pedro Paterno",
			imagePath = "images/pedro_paterno.png",
			hint = [[He was the negotiator/mediator of the Pact of Biak-na-Bato.]],  --multiline string
			trivia =[[He wrote one of the first filipino novels entitled Ninay and the first filipino collection of poems in Spanish Sampaguitas y otras poesias varias(Jasmine and other Poems)He served as prime minister of the Philippine Republic in the middle of 1899, and served as head of country's asswembly, and the cabinet.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Rafael Palma",
			imagePath = "images/rafael_palma.png",
			hint = [[Filipino politician, Rizalian, reporter, writer, educator and a famous mason in Philippines. .]],  --multiline string
			trivia =[[Palma wrote a biography of Dr. Jose P. Rizal which Justice Roman Ozaeta translated to English with the title The Pride of the Malay Race.he also wrote The Woman and the Right to Vote and The new mentality.Born in Tondo, Manila, on October 24, 1874. He was involved in the propaganda campaign against the Spaniards. He cofounded with Gen. Antonio Luna the revolutionary newspaper, La Independencia. Later, he also founded El Nuevo Dia, Cebu's first daily. Died in Manila on May 24, 1939.]],
showHint = 1,
			level = 3,
			status = 1,
		},
{
			answer = "Rajah Lakandula",
			imagePath = "images/rajah_lakandula.png",
			hint = [[One of the most illustrious ancient Filipinos.]],  --multiline string
			trivia =[[He became a Christian and took the name of Carlos, after the king of Spain. He made the blood compact with Goiti. He fought alongside the Spaniards against the Chinese pirate, Limahong. Died in 1575.was a native Muslim king of an area north of the Pasig River in Manila when the Spaniards started colonizing the Philippines.]],
showHint = 1,
			level = 3,
			status = 1,
		},

	
}
M.peopleQuestion = peopleQuestion



--questions for foods
local foodQuestion = 
{
	{
			answer = "Beef Mami",
			imagePath = "images/beef_mami.png",
			hint = [[This is basically composed of tender beef brisket and egg noodles in hot beef stock.]],  --multiline string
			trivia =[[A typical meryenda or mid-afternoon snack (sometimes eaten as breakfast), a hot serving of this noodle soup with some additional hot sauce will definitely keep you warm.]],			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Chicken Tinola",
			imagePath = "images/chicken_tinalo.png",
			hint = [[Is a ginger and onion based soup that uses chicken as the core ingredient.]],  --multiline string
			trivia =[[This is an authentic Filipino main dish that is best complimented withgreen papaya wedges (an alternative is chayote) and chili pepper leaves. As a traditional dish, the chicken is usually cooked in low heat to bring out the natural flavor.]],			showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Goto",
			imagePath = "images/goto.png",
			hint = [[A type of rice porridge or congee that uses ox tripe as one of the major ingredients.]],  --multiline string
			trivia =[[This can be considered either as a breakfast food or a heavy snack. Usually served hot, this food is commonly consumed early in the morning to break hunger brought about by several hours of deprivation.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Molo Soup",
			imagePath = "images/molo_soup.png",
			hint = [[ is a soup dish that contains a mixture of ground pork wrapped in wonton wrapper, shredded chicken meat, and shrimps.]],  --multiline string
			trivia =[[This dish resembles the Chinese wonton soup but the array of ingredients and flavor makes this dish stand out. This is a perfect tasty soup to have during a snowy day.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Nilagang Baboy",
			imagePath = "images/nilagang_baboy.png",
			hint = [[is probably the easiest and simplest Filipino Soup to make.]],  --multiline string
			trivia =[[Pork is simmered in boiling water until tender. Vegetables such as chopped potatoes, long green beans (Baguio beans), bokchoy (pechay), and carrots are added afterwards. Fish sauce and lemon (or calamansi) can be used to provide additional flavor. Having this soup on a cold winter night can make you feel more comfortable.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Pochero",
			imagePath = "images/pochero.png",
			hint = [[A type of beef stew that resembles the Nilaga.]],  --multiline string
			trivia =[[This stew has a unique mild sweet and sour flavor. Plantain bananas are used to provide a gentle touch of sweetness. Another important ingredient, the tomato sauce, gives color to this dish; it is also responsible in giving this dish the mild sour taste. Beef Pochero is best enjoyed when served with hot steamed rice.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Sinigang na Hipon",
			imagePath = "images/sinigang_hipon.png",
			hint = [[A sour soup dish cooked by boiling seafood (shrimp) and adding a sour base such as tamarind.]],  --multiline string
			trivia =[[The most commonly used souring agent is tamarind. However, other fruits such as guava, tomato, bilimbi (known as kamias), green mango, pineapple, and wild mangosteen (santol) can also be used. This dish will always be appreciated as long as the soup is sour enough and the flavor of the meat or seafood blends.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Inubarang Manok",
			imagePath = "images/inubarang_manok.png",
			hint = [[is one of the dishes Aklan takes pride in.]],  --multiline string
			trivia =[[It is a hearty mix of native chicken and banana ubad, the core or pith of the banana plant (as ubod is to the coconut), flavored with pure coconut milk and seasoned with lemon grass (tanglad) ginger, garlic, onion and salt.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Afritada",
			imagePath = "images/afrit_ada.png",
			hint = [[is one of those special, Spanish-inspired Filipino dishes that are most common during “fiestas”.]],  --multiline string
			trivia =[[ is a tomato sauce-based chicken stew dressed with bell peppers, tomatoes, onions, and potatoes. The word “afritada” is actually a Spanish word which means fried.]],showHint = 1,
			level = 1,
			status = 1,
		},
{
			answer = "Kalderatang Baka",
			imagePath = "images/baka_reta.png",
			hint = [[This traditional food is cooked with tender beef, potatoes, and carrots stewed in tomato sauce.]],  --multiline string
			trivia =[[some call it bakareta for short is one of the all-time favorite Filipino dishes that is always present in fiestas and other celebrations. Cooking this dish requires you a lot of patience. The key is to make the beef tender but not dry. ]],showHint = 1,
			level = 1,
			status = 1,},
		{
			answer = "Balut",
			imagePath = "images/ba_lut.png",
			hint = [[It is a developing duck embryo that is boiled alive and eaten in the shell.]],  --multiline string
			trivia =[[Balut eggs are fertilized duck (sometimes chicken) eggs that are at the stage of development where there is a nearly developed embryo inside. The balut egg then boiled and usually eaten with salt, just like a normal boiled egg.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Isaw",
			imagePath = "images/is_aw.png",
			hint = [[It is a street food, made from barbecued pig or chicken intestines.]],  --multiline string
			trivia =[[They are then either boiled, then grilled, or immediately grilled on sticks. They are usually dipped in suka/sukang pinakurat (Filipino term for vinegar with onions, peppers, and other spices) then eaten.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Kamaru",
			imagePath = "images/kam_aru.png",
			hint = [[It is a Mole or rice field crickets.]],  --multiline string
			trivia =[[ The fact that it emerged from the country’s culinary capital means there’s something delectable about kamaru.The unusual crunchiness and the juice coming out from the insect’s abdomen also add up to its yucky factor. But if prepared and cooked right, perhaps an adobong kamaru may inspire the adventure foodie out of you.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Soup no. 5",
			imagePath = "images/soup_no5.png",
			hint = [[It is the infamous soup dish made up of bull male organs believed to have aphrodisiac properties.]],  --multiline string
			trivia =[[In the southern Philippines, this is called lanciao. The dish which probably originated from the creative Filipino roadside eateries is believed to have a very potent love potion or aphrodisiac properties.In the southern Philippines, this is called lanciao. The dish which probably originated from the creative Filipino roadside eateries is believed to have a very potent love potion or aphrodisiac properties.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Adobong Salagubang",
			imagePath = "images/Taho.png",
			hint = [[It is a common treat in Nueva Ecija]],  --multiline string
			trivia =[[The salagubang, or june bug,When fried, it can be served as an appetizer or as pulutan (food served with alcoholic drinks, usually beer).  Sometimes, it is prepared like adobo and eaten with rice. Salagubang can be found in some markets in Nueva Ecija.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Adobong Uok",
			imagePath = "images/adobong_uok.png",
			hint = [[It is a beetle larva, which is an exotic dish in Angono, Rizal.]],  --multiline string
			trivia =[[Uok (native term) is basically a coconut rhinoceros beetle larva which can be found in dead coconut logs. This fat, eerie worm can be eaten raw just like what the natives do in the forest.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Abuos",
			imagePath = "images/abu_os.png",
			hint = [[It is a fruit-tree ant, also called hantik in Tagalog.]],  --multiline string
			trivia =[[It is a popular delicacy in the northern parts of Luzon. Often sauteed in garlic and onions, this native dish, which looks a lot like roasted legumes, is a tasty treat that’s also claimed to be an effective aphrodisiac.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Betute Tugak",
			imagePath = "images/betute_tugak.png",
			hint = [[Stuffed frog in english is also one of Kapampangan exotic dishes.]],  --multiline string
			trivia =[[Farmers in Pampanga used to depend on rain water to irrigater their farms. Children would then catch the frogs, which came out during the rainy season, while their parents cultivated the land or planted rice.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Pinikpikan",
			imagePath = "images/pinik_pikan.png",
			hint = [[It is a popular native dish from the highlands of the Cordillera region.]],  --multiline string
			trivia =[[Pinikpikan is prepared by beating a live chicken with a stick prior to cooking. The beating bruises the chicken's flesh, bringing blood to its surface, which is said to improve the flavour after cooking.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Tamilok",
			imagePath = "images/tami_lok.png",
			hint = [[It is a mollusk found inside rotting mangroves.]],  --multiline string
			trivia =[[The tamilok, a wood worm which tastes like your familiar oyster, is a famous delicacy found in Palawan.The word tamilok was surprisingly coined by two Americans. They started calling one of their friends Tommy, look!, after seeing the locals eating the tree worm.  ]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Betamax",
			imagePath = "images/beta_max.png",
			hint = [[It is a grilled  chicked blood or pig's blood.]],  --multiline string
			trivia =[[Betamax called as such because of their box type shape, similar to the old school Betamax tapes.The blood extracted from a chicken actually turns somewhat gelatinous when cooled. It becomes this thick, gelatin like substance and then they cook it a bit to have it maintain the texture. ]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Farm Frog",
			imagePath = "images/farm_frog.png",
			hint = [[Another animal that tastes like chicken.]],  --multiline string
			trivia =[[These green creatures can be cooked the same way as the rats, although it can be roasted and made into “rellenong palaka” or stuffed frogs. ]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Farm Snail",
			imagePath = "images/farm_snail.png",
			hint = [[It is Best cooked with coconut milk.]],  --multiline string
			trivia =[[It is quiet difficult to eat the flesh of the snail. But there is a technique to extract the meat out of its shell which is hitting the rear of the snail with fork and blow some air on it. You can now use your fork to get the flesh.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Bat",
			imagePath = "images/bat_food.png",
			hint = [[Another food that definitely tastes like chicken for the nth time.]],  --multiline string
			trivia =[[The bats are best cooked in adobo or fried and they can also leave you a great tang on your taste buds. The bats can be boiled using various flavorings and this is considered a delicacy all over Asia.]],showHint = 1,
			level = 2,
			status = 1,
		},
{
			answer = "Farm Rat",
			imagePath = "images/farm_rats.png",
			hint = [[They thrive on the farm lands and many consider them as very clean.]],  --multiline string
			trivia =[[Farm rats which are also a good source of protein can be cooked with coconut milk which is called in the Philippines as ginataang daga, or with tamarind which is called sinampalukang daga.These are not the rats that are commonly found in local houses.]],showHint = 1,
			level = 2,
			status = 1,
		},
{

			answer = "Adobo",
			imagePath = "images/Adobo.png",
hint = [[Adobo. Mexican in origin, but Filipinos found that cooking meat(often chicken and pork) in vinegar, salt, garlic, pepper.]],  --multiline string
			trivia =[[Adobo.No list of Filipino food would be complete without adobo. This cooking style can be applied to different meats or even seafood .Adobo]],showHint = 1,
			level = 3,
			status = 1,
		},


 {
			answer = "Arroz Caldo",
			imagePath = "images/arroz_caldo.png",
			hint = [[Arroz Caldo. It has been a favorite Filipino snack and is best eaten with tokwat baboy..]],  --multiline string
			trivia =[[Arroz Caldo.literally means warm rice. This Arroz Caldo Recipe is a type of congee that closely resembles risotto. .Arroz Caldo]],showHint = 1,
			level = 3,
			status = 1,
		},


{
			answer = "Balut",
			imagePath = "images/ba_lut.png",
			hint = [[Balut. This 17-day-old duck embryo is boiled, served with rock salt or spicy vinegar and is often consumed with beer..]],  --multiline string
			trivia =[[Balut.No trip to the Philippines would be complete without sampling its famous balut. Vendors peddling these eggs on the street chant “Baluuuuut!” to entice buyers..Balut]],showHint = 1,
			level = 3,
			status = 1,
		},

               {
			answer = "Bibingka",
			imagePath = "images/bibing_ka.png",
			hint = [[Bibingka. These rice cakes are made by soaking the rice overnight, grinding it with a mortar stone and mixing in coconut milk and sugar]],  --multiline string
			trivia =[[Bibingka.For many Filipinos, Christmas is marked by the scent of bibingkas cooking at dawn. These rice cakes are made by soaking the rice overnight, grinding it with a mortar stone and mixing in coconut milk and sugar. Laborious. .Bibingka]],showHint = 1,
			level = 3,
			status = 1,
		},

      {
			answer = "Bicol Express",
			imagePath = "images/bicol_express.png",
			hint = [[Bicol Express. A fitting tribute to people who love coconut milk and spicy food is a fiery chili,pork and stew]],  --multiline string
			trivia =[[Bicol Express. A fitting tribute to people who love coconut and spicy food is bicol express, a fiery chili, pork and coconut milk stew. Try it at the hole-in-the-wall eatery called Top Haus in Makati. .Bicol Express]],showHint = 1,
			level = 3,
			status = 1,
		},

                {
			answer = "Bulalo",
			imagePath = "images/bu_lalo.png",
			hint = [[Bulalo.  It is a light colored soup that is made by cooking beef shanks and marrow bones until the collagen and fat has melted into the clear broth.]],  --multiline string
			trivia =[[Bulalo.  is a beef dish from the Philippines. It is a light colored soup that is made by cooking beef shanks and marrow bones until the collagen and fat has melted into the clear broth. Bulalo is native to the Southern Luzon region of the Philippines. .Bulalo]],showHint = 1,
			level = 3,
			status = 1,
		},

                {

			answer = "Champorado",
			imagePath = "images/Champorado.png",
			hint = [[Champorado. a chocolate rice porridge. It's hot, rich and filling..]],  --multiline string
			trivia =[[Champorado. When the rains start pouring and classes are suspended, children love this comforting breakfast  a chocolate rice porridge. It's hot, rich and filling. .Champorado]],showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Halo-Halo",
			imagePath = "images/Taho.png",
			hint = [[Halo-Halo. A dessert consisting of finely shaved ice topped with up to 12 different sweets and ingredients..]],  --multiline string
			trivia =[[Halo-Halo. In Manila, Milky Way Café offers the best halo-halo with finely shaved ice and a generous serving of leche flan, gulaman, ube, banana, kaong, beans and garbanzos, milk and a scoop of ube ice cream..Halo-Halo]],showHint = 1,
			level = 3,
			status = 1,
		},


                {
			answer = "Kare-Kare",
			imagePath = "images/kare_kare.png",
			hint = [[Kare-Kare. Made from ground toasted rice and crushed peanuts. Banana blossom, eggplants and string beans..]],  --multiline string
			trivia =[[Kare-Kare. This stew of oxtail has the most delicious sauce made from ground toasted rice and crushed peanuts. Banana blossom, eggplants and string beans add more interesting textures, to make it a complete meal on its own..Kare-Kare]],showHint = 1,
			level = 3,
			status = 1,
		},

                {
			answer = "Laing",
			imagePath = "images/laing.png",
			hint = [[Laing. The authentic versions from kitchens in Naga and Albay are most delicious.]],  --multiline string
			trivia =[[Laing. This dish of taro leaves cooked in rich coconut milk is an everyday staple in Bicol. Morsels of meat and chili are added to give punch to the Laing. .Laing]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Leche Flan",
			imagePath = "images/Leche_flan.png",
			hint = [[Leche Flan. an egg and milk-based custard capped off with glistening caramelized sugar..]],  --multiline string
			trivia =[[Leche Flan. This is a popular dessert among locals,  an egg and milk-based custard capped off with glistening caramelized sugar..Leche Flan]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Lechon",
			imagePath = "images/lechon.png",
                hint = [[Lechon. The entire pig is spit-roasted over coals, with the crisp, golden-brown skin served with liver sauce, the most coveted part..]],  --multiline string
			trivia =[[Lechon. The lechon is the most invited party guest in the Philippines. The entire pig is spit-roasted over coals, with the crisp, golden-brown skin served with liver sauce, the most coveted part..Lechon]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Longganisa",
			imagePath = "images/longganiza.png",
			hint = [[Longganisa. Usually eaten for breakfast with garlic rice, fried egg and a dipping sauce of vinegar. .]],  --multiline string
			trivia =[[Longganisa. Every province has their version of the pork sausage called longganiza. It varies from sweet to garlicky to spicy. Usually eaten for breakfast with garlic rice, fried egg and a dipping sauce of vinegar. .Longganisa]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Pandesal",
			imagePath = "images/Pandesal.png",
			hint = [[Pandesal. buns often eaten by Filipinos for breakfast..]],  --multiline string
			trivia =[[Pandesal. are small oval buns often eaten by Filipinos for breakfast. A brownish crust conceals a soft and fluffy inside. The best pandesal is baked in an oven using firewood, naturally infusing the wood flavor into the bread. .Pandesal]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Pinakbet",
			imagePath = "images/pinakbet.png",
			hint = [[Pinakbet. The vegetable dish of okra, eggplant, bitter gourd, squash, tomatoes and bagoong (shrimp or fish paste) .]],  --multiline string
			trivia =[[Pinakbet. Up north in Ilocos, the vegetable dish of okra, eggplant, bitter gourd, squash, tomatoes and bagoong (shrimp or fish paste) called pinakbet is a favorite..Pinakbet]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Sinigang na Baboy",
			imagePath = "images/sinigangna_baboy.png",
			hint = [[Sinigang na Baboy. Often accompanied by vegetables like kangkong, string beans and taro, .]],  --multiline string
			trivia =[[Sinigang na Baboy. Sinigang is a stew of fish, prawns, pork or beef soured by fruits like tamarind, kamias or tomatoes.  Often accompanied by vegetables like kangkong, string beans and taro, this stew is eaten with rice. .Sinigang na Baboy]],showHint = 1,
			level = 3,
			status = 1,
		},


                {
			answer = "Sisig",
			imagePath = "images/sisig.png",
			hint = [[Sisig. The crunchy and chewy texture of this appetizer is aperfect match for an cold beer.]],  --multiline string
			trivia =[[Sisig. Nothing goes to waste in Filipino food. In the culinary capital of Pampanga, they turn the pork’s cheeks, head and liver into a sizzling dish called Sisig. The crunchy and chewy Sisig]],showHint = 1,
			level = 3,
			status = 1,
		},


                {
			answer = "Taho",
			imagePath = "images/Taho.png",
			hint = [[Taho. Brown sugar syrup is stirred into warm soybean custard and topped with sago pearls.]],  --multiline string
			trivia =[[Taho. Brown sugar syrup is stirred into warm soybean custard and topped with sago pearls. Traditionally sold by vendors walking the streets calling out to those at home, but can also be sourced from supermarkets and restaurants.Taho]],showHint = 1,
			level = 3,
			status = 1,
		},



                {
			answer = "Turon",
			imagePath = "images/turon.png",
			hint = [[Turon. This fried banana with langka (jackfruit) all sealed in a lumpia wrapper is our version of a sweet spring roll.]],  --multiline string
			trivia =[[Turon. This fried banana with langka (jackfruit) all sealed in a lumpia wrapper is our version of a sweet spring roll. It is peddled around the cities and towns for the perfect merienda (mid-morning or afternoon snack). Turon]],showHint = 1,
			level = 3,
			status = 1,
		},

	}
M.foodQuestion = foodQuestion



--questions for events
local eventQuestion = 
{
		{
			answer = "Ati-Atihan",
			imagePath = "images/ati_atihan_festival.png",
			hint = [[Ati-Atihan. Is a celebrated in the third week of January.]],  --multiline string
			trivia =[[Ati-Atihan. Is a festival in honour of the Santo Niño, celebrated in the third week of January. During the last three days of this week-long festival (fiesta), a parade is characteristic. A colourful happening with celebrants who paint their faces in many different ways and who are dressed in the most exceptional costumes.The fiesta is celebrated in Kalibo on the island of Panay (Visayas). Ati-Atihan]],
			showHint = 1,
			level = 1,
			status = 1,
		},


		{
			answer = "Dinagyang Festival",
			imagePath = "images/dinagyang_festival.png",
			hint = [[Dinagyang Festival. Is Iloilo City’s version of the Ati-Atihan festival widely celebrated not only in Panay Island but also in other parts of the country..]],  --multiline string
			trivia =[[Dinagyag Festival. Is Iloilo City’s version of the Ati-Atihan festival widely celebrated not only in Panay Island but also in other parts of the country. It may not be as ancient as the one in Kalibo in Aklan Province, but is definitely impressive in choreography and striking in terms of the various attires worn by participating tribes which reflect the ingenuity, craftsmanship and artistry of the Ilonggos. Dinagyag Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},


                {
			answer = "Higantes Festival",
			imagePath = "images/gigantes_festival.png",
			hint = [[Higantes Festival. Is a tradition began last century, when Angono was a Spanish hacienda.]],  --multiline string
			trivia =[[Higantes Festival. The “higante” tradition began last century, when Angono was a Spanish hacienda. The hacienda owners concerned about costs prohibited all celebrations except for one annual fiesta. The townspeople concerned about enjoyment decided to make the best of a bad situation. Using an art form brought from Mexico by Spanish priests, they created larger-than-life caricatures of their Spanish landlords. In typical Filipino fashion, the fiesta become in equal parts, a stunning spectacle and a tricky inside joke. There too was a story that a French man happened to pass by this coastal town of Laguna de Bay as he cruised from Manila Bay.Dinagyag Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},



                {
			answer = "Kasadyaan Festival",
			imagePath = "images/kasadyaan_festival.png",
			hint = [[kasadyaan festival. On the following day, we woke up on a gloomy morning with heavy rainfall and strong winds.]],  --multiline string
			trivia =[[kasadyaan festival. On the eve of Pintados-Kasadyaan Festival, heavy rainfall enveloped Tacloban city. An uninvited guest, that goes by the name Gorio just arrived and the city was placed under typhoon signal number 1. On the following day, we woke up on a gloomy morning with heavy rainfall and strong winds. Tacloban City and the rest of the province of Leyte is now under typhoon signal number 2. We received messages that the street dancing competition was cancelled by the organizers.kasadyaan festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},


                {
			answer = "Kinabayo Festival",
			imagePath = "images/kinabayo_festival.png",
			hint = [[kinabayo Festival. Is a celebrated every July 25 in Dapitan City Zamboanga del Norte Philippines.]],  --multiline string
			trivia =[[kinabayo Festival. Which is celebrated every July 25 in Dapitan City Zamboanga del Norte Philippines celebrate a mysterious and colorful pageant re-enacting the Spanish-Moorish wars, mainly the Battle of Covadonga where the Spanish forces under General Pelagio took their last stand against Saracan. They were able to overturn the tide through the miraculous spirit of St. James. The addition of local color and modernism has made this annual celebration a popular attraction which brings thousands of tourists to the Dapitan City.Kinabayo Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},



                {
			answer = "Longganisa Festival",
			imagePath = "images/longganisa_festival.png",
			hint = [[Longganisa Festival. Is a weeklong celebration in honor of its patron saint, San Pablo (Saint Paul)..]],  --multiline string
			trivia =[[Longganisa Festival. This year's Longganisa Festival took place last January 22, , which coincided with the day Vigan was converted into a chartered city. The Longganisa Festival Street Dancing was the highlight of the Vigan CIty Fiesta, a weeklong celebration in honor of its patron saint, San Pablo (Saint Paul).Longganisa Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},



                
                {
			answer = "Sinulog Festival",
			imagePath = "images/sinulog_festival.png",
			hint = [[Sinulog Festival. Is one of the grandest, most distinguished and most colorful festivals in the Philippines..]],  --multiline string
			trivia =[[Sinulog Festival. The Sinulog festival is one of the grandest, most distinguished and most colorful festivals in the Philippines. The major festival is held each year on the third Sunday of January in Cebu City to honor the Santo Niño, or the child Jesus, who used to be the patron saint of the whole province of Cebu (since in the Catholic faith Jesus is not a saint, but God). It is fundamentally a dance ritual which remembers the Filipino people's pagan past and their recognition of Christianity.Sinulog Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},


 
                {
			answer = "Moriones Festival",
			imagePath = "images/moriones_festival.png",
			hint = [[Moriones Festival. Is a week-long celebration in the province of Marinduque that starts from Palm Sunday and ends on Easter Sunday.]],  --multiline string
			trivia =[[Moriones Festival. Is a week-long celebration in the province of Marinduque that starts from Palm Sunday and ends on Easter Sunday. Activities lined up during the festival include holy masses, exhibits, trade fairs, parades, processions, passion plays and one of the highlights of the event The Via Crusis.Moriones Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},


                {
			answer = "Pintados Festival ",
			imagePath = "images/pintados_festival.png",
			hint = [[Pintados Festival. Is a merry-making event lasting a whole month.]],  --multiline string
			trivia =[[Pintados Festival. In 1668, the Spaniards came to the Visayas and found in the islands heavily tattooed men and women, whom they called Pintados. These people had a culture of their own, commemorating victories by holding festivals and honoring their gods after a bountiful harvest.Pintados Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},


                {
			answer = "Sangyaw Festival ",
			imagePath = "images/sangyaw_festival.png",
			hint = [[Sangyaw Festival. Is a religious and socio-cultural event in the Philippines.]],  --multiline string
			trivia =[[Sangyaw Festival. Is a religious and socio-cultural event in the Philippines. It was revived in 2008 by the city government of Tacloban, Philippines. Sangyaw means to herald news in Waray language. Various festival-participants from different parts of the country participate in this tribal processionIt was held a day before the city fiesta. The festival was first held in 1974 but was cancelled in 1987.Sangyaw Festival]],
			showHint = 1,
			level = 1,
			status = 1,
		},
		
     {
			answer = "Bangus Festival",
			imagePath = "images/bangus_festival.png",
			hint = [[Bangus Festival. Is one of the major and most exciting festivals in the Philippines worth visiting and coming back for.]],  --multiline string
			trivia =[[Bangus Festival. The Bangus Festival is one of the major and most exciting festivals in the Philippines worth visiting and coming back for. The yearly euphoria envelops the city of Dagupan with a high level of excitement as the street dancers, in their most striking costumes, depict the harvest of bangus. Learn the various ways of cooking bangus in 101 ways while indulging in its succulent taste. See skilled Dagupeños speedily classify, debone and eat bangus. Discover the most beautiful, longest and heaviest bangus. Witness 10,000 pieces of Dagupan bangus simultaneously being grilled in a scorching kilometer stretch, their mouth-watering aroma wafting through the air.Bangus Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},



                {
			answer = "Kadayawan Festival",
			imagePath = "images/kadayawan_festival.png",
			hint = [[Kadayawan Festival. It is a celebration of Good Harvest!.]],  --multiline string
			trivia =[[Kadayawan Festival. The festival began from a government-initiated program called Unlad Proyekto Dava in 1986, planned to unite the Davaoeños after the chaotic martial law years and to showcase the city as a peaceful and colorful place to visit and do business in. At the time, it was called Apo Duwaling, a name created from the icons Davao was famous for: Mt. Apo, the country's highest peak; durian, the king of fruits; and waling-waling. The queen of orchids. Davao is also home of the majestic Philippine eagle, the national bird. In 1988, the festival was renamed Kadayawan sa Dabaw by Mayor Rodrigo Duterte to celebrate the city's unique wealth in flowers, fruits, and ethnic culture.Kadayawan Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},



                {
			answer = "Maskara Festival",
			imagePath = "images/maskara_festival.png",
			hint = [[Maskara Festival. Bacolod City is known for the popular Festival which takes place here Oct. 1-20..]],  --multiline string
			trivia =[[Maskara Festival. The festival instills among the people the culture of escapism and obscurantism, where they have to accept and forget their sufferings caused by the exploitation and oppression of the landlords. In this city, people are encouraged by the organizers, mostly big business and hacenderos (big landlords), to forget the economic hardships and depression which happen especially during tiempo muerto (dead season, or off sugar harvest-milling season). Bacolod is the capital city of Negros Occidental, known as the Sugar Bowl of the Philippines and is part of Western Visayas in central Philippines.Maskara Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
			answer = "Mango Festival",
			imagePath = "images/mango_festival.png",
			hint = [[Mango Festival. This year, the festival is slated on March 20-24 coinciding with the hosting of the 15th National.]],  --multiline string
			trivia =[[Mango Festival. Is a known for the beautiful and majestic coves of Nagsasa and Anawangin with the famous islands of Capones and Camara located in the municipality of San Antonio.  Another thing the province of Zambales is being proud of is their mangoes awarded by the Guinness Book of World Records as the sweetest mango in the world in 1995. To celebrate the bountiful harvest, the province holds the annual Zambales Mango Festival in Iba. This year, the festival is slated on March 20-24 coinciding with the hosting of the 15th National Mango Congress.Mango Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
			answer = "Lanzones Festival",
			imagePath = "images/lanzones_festival.png",
			hint = [[Lanzones Festival. Aside from this, the people also await the annual barangay beautification contest, indigenous sports, and tableau of local.]],  --multiline string
			trivia =[[Lanzones Festival. Is an annual thanksgiving celebration for Camiguin Island's bountiful harvest. The town of Mambajao holds the feast during the third week of October, in time for the season of the tropical fruit lanzones. The province of Camiguin is known for having the sweetest lanzones among the abundant sources of the fruit along the north-central coast of Mindanao. The locals and tourists enjoy this weeklong celebration with a line-up of activities showcasing the richness culture in Camiguin like street dancing, grand lanzones parade, agri-cottage industry products exhibits, and beauty pageants. Aside from this, the people also await the annual barangay beautification contest, indigenous sports, and tableau of local culture within the week.Lanzones Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
			answer = "Ibalong Festival",
			imagePath = "images/ibalong_festival.png",
			hint = [[Ibalong Festival. Is a People parade in the streets wearing masks and costumes to imitate the appearances of the heroes and the villains, portraying the classic battles that made their way into the history of Bicol.]],  --multiline string
			trivia =[[Ibalong Festival. The Ibalong Festival is a non-religious festival in Legazpi City, Albay, Philippines and is held in August. The festival celebrates the epic story Ibalong who was accompanied by three legendary heroes, namely Baltog, Handyong, Bantong and other ancient heroes. People parade in the streets wearing masks and costumes to imitate the appearances of the heroes and the villains, portraying the classic battles that made their way into the history of  Bicol. The Ibalong Festival aims to express warmth and goodwill to all people visitors and tourists are encouraged to celebrate with the Bicolanos.Ibalong Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
			answer = "Sandugo Festival",
			imagePath = "images/sandugo_festival.png",
			hint = [[Sandugo Festival. This festival commemorates the Treaty of Friendship between Datu Sikatuna, a chieftain in Bohol.]],  --multiline string
			trivia =[[Sandugo Festival. Is an annual historical celebration that takes place every year in Tagbilaran City on the island of Bohol in the Philippines. This festival commemorates the Treaty of Friendship between Datu Sikatuna, a chieftain in Bohol, and Spanish conquistador Miguel Lopez de Legazpi. This 16th-century peace treaty occurred on March 16, 1565 through a blood compact or sandugo The Sandugo Festival is held every July. The Tagbilaran City Charter Day on July 1 kicks-off the month-long festival with a holy mass, diana, motorcade and program sponsored by the City Government of Tagbilaran. Among the major activities during the month is the Miss Bohol Sandugo Beauty Pageant, and the Sandugo Street Dancing Competition which is usually held on the 3rd or 4th Sunday of July, and organized by the Bohol Sandugo Foundation, Inc.Sandugo Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},
                

                {

			answer = "Sinukwan Festival",
			imagePath = "images/sinukwan_festival.png",
			hint = [[Sinukwan Festival. Activities include native photo contest, cultural pageants, trade fairs of food and crafts, cultural shows, and street dancing competition.]],  --multiline string
			trivia =[[Sinukwan Festival. The Sinukwan Festival relives the Kapampangan spirit with a week-long calendar of cultural revivals capped by a grand street-dance parade in the streets of San Fernando, with towns outdoing each other to the tune of “Atin Cu Pung Singsing.” Organized annually by the Save Pampanga Movement, the festival memorializes Aring Sinukwan, god of the ancient Kapampangans.Sinukwan Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},



                {

			answer = "Frog Festival",
			imagePath = "images/frog_festival.png",
			hint = [[Frog Festival. The festival was conceptualized in 2003 by three Most Outstanding Kapampangan Awardees namely Ivan Anthony Henares (City Tourism Officer, City of San Fernando).]],  --multiline string
			trivia =[[Frog Festival. The San Fernando Frog Festival takes place in Pampanga in The Philippines. As part of its aim to preserve the Kapampangan culture, the City of San Fernando, Pampanga organizes the Piestang Tugak to promote the various frog traditions of the province. Events include the paduasan – a frog catching competition using traditional methods, various culinary events featuring Pampanga's unique frog cuisine such as betute or stuffed frog, and the frog olympics – fun games for young people. The festival was conceptualized in 2003 by three Most Outstanding Kapampangan Awardees namely Ivan Anthony Henares (City Tourism Officer, City of San Fernando), Rolan Quiambao (CSFP Arts and Culture Council Chairman), and Robbie Tantingco (Director, Center for Kapampangan Studies) and has been successfully held annually ever since.Frog Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},



                {

			answer = "Sampaguita Festival",
			imagePath = "images/sampaguita_festival.png",
			hint = [[Sampaguita Festival. Farmers in the town are still  cultivating the said flower.]],  --multiline string
			trivia =[[Sampaguita Festival. Is a  week-long celebration which includes various activities ranging from  cultural to athletics, trade fairs, dance contests, parades,  art-exhibits, social and religious gatherings, tribal dance and sports  exhibitions in San Pedro, Laguna, Philippines. The festival is about  celebrating the national flower of the Philippines- the sampaguita  flower. The town of San Pedro, Laguna is a place that has a thriving  'sampaguita-industry' in the Philippines. Garlands of sampaguita flowers  are being made in the said town. Farmers in the town are still  cultivating the said flower. The Sampaguita  Festival coincides with San  Pedro Day- a local holiday for the town. San Pedro Day is celebrated  every February 21- the actual day when the said festival is at its peak.  The pictures in this i-Report show participants being awarded for their  costumes.Sampaguita Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {

			answer = "Bayluhay Festival",
			imagePath = "images/baluhay_festival.png",
			hint = [[Bayluhay Festival. Whether it is a re-enacment, or noting the life and achievements of a human rights icon, Ilonggos are proud of its history and showcases many events and festivals throughout the year.]],  --multiline string
			trivia =[[Bayluhay Festival. Is an opportunity for the people of  San Joaquin to express their pride and honor, known to be progenies of these great and noble ancient rulers of the land. It is proof of the greatness that springs from unity among the people in their community; the local government and the private sector, cultural advocates come together.Bayluhay Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
                        answer = "Kagay-an Festival",
			imagePath = "images/kagay_an_festival.png",
			hint = [[Kagay-an Festival. This is this year’s fiesta theme and I have gathered some events during the month of August.]],  --multiline string
			trivia =[[Kagay-an Festival. In a new twist to the Kagay-an Festival parades, Higalas (Friends) introduced giant icons of religious, cultural, and important figures in homage to the city’s glorious past and rich heritage. The parade consists of the Band/Drum and Lyre, Military Civic, Organizations parade, interlaced with the Icons. The parade started at Rodelsa Circle, pausing at the Kiosko  Kagawasan for the presentation, then ended at the Limketkai East Canopy, in front of the East Concourse.Kagay-an Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},



     {
                        answer = "Inug-o gFestival",
			imagePath = "images/inug_og_festival.png",
			hint = [[Inug-og Festival. This festival showcases tribal performance of street dancing in tribute to Oroquieta City’s patron saint, Our Lady of the Holy Rosary.]],  --multiline string
			trivia =[[Inug-og Festival. Is an ethnic festival of the Suban-on culture that is celebrated on the 14th of  October, in conjunction with the weeklong Fiesta celebration. This festival showcases tribal performance of street dancing in tribute to Oroquieta City’s patron saint, Our Lady of the Holy Rosary. Performers are dressed up in ethnic costumes while performing rituals in the street and dancing to the rhythm of the parade.Inug-og Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
                        answer = "Maubanog Festival",
			imagePath = "images/maubanog _festival.png",
			hint = [[Maubanog Festival. A seven-day cultural extravaganza that features the town’s colorful history.]],  --multiline string
			trivia =[[Maubanog Festival. Is a seven day cultural extravaganza that features the town's colorful history amiable people, tasty cuisine and of course, its locally fermented only-in-Mauban nipa wine.Maubanog Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},


                {
                        answer = "Halamang Dilaw Singkaban Festival",
			imagePath = "images/halamang_dilaw_singkaban_festival.png",
			hint = [[Halamang Dilaw Singkaban Festival. Festival of arts and culture in honor of the patron saint of the province, Our Lady of Victory.]],  --multiline string
			trivia =[[Halamang Dilaw Singkaban Festival. The popular Festival in the Province of Bulacan is the Singkaban Festival. Singkaban festival is a festival of arts and culture in honor of the patron saint of the province, Our Lady of Victory.Halamang Dilaw Singkaban Festival]],
			showHint = 1,
			level = 2,
			status = 1,
		},
		
         {

			answer = "Feast of Black Nazarene",
			imagePath = "images/feast_of_black_nazarene.png",
			hint = [[Feast of Black Nazarene. Is one of the most awaited events for most of the catholic devotees,celebrates every January 9.]],  --multiline string
			trivia =[[Feast of Black Nazarene. During the feast of the Black Nazarene thousands of barefoot men join the annual procession. Walking barefoot during the procession is seen as a sign of humility.Feast of Black Nazarene]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Holy Week",
			imagePath = "images/holy_week.png",
			hint = [[Holy Week. Is the week which precedes the great festival of the Resurrection on Easter Sunday.]],  --multiline string
			trivia =[[Holy Week. Is the week which precedes the great festival of the Resurrection on Easter Sunday, and which consequently is used to commemorate the Passion of Christ, and the event which immediately led up to it.Holy Week]],
			showHint = 1,
			level = 3,
			status = 1,
		},



                {

			answer = "Simbang Gabi",
			imagePath = "images/simbang_gabi.png",
			hint = [[Simbang Gabi. Is a typical Filipino way of preparing for the great feast of Christmas.]],  --multiline string
			trivia =[[Simbang Gabi. Is a typical Filipino way of preparing for the great feast of Christmas. The tradition was brought to us by Spanish evangelizers from Mexico. Originally, it popularly came to be known as Misa Aguinaldo. De Aguinaldo means gift, gift, which is peculiar to Christmas.Simbang Gabi]],
			showHint = 1,
			level = 3,
			status = 1,
		},

                
                {

			answer = "Kuralda Festival",
			imagePath = "images/kuralda_festival.png",
			hint = [[Kuralda Festival. The municipality celebrates its town fiesta on the 24th day of June.]],  --multiline string
			trivia =[[Kuralda Festival. The municipality celebrates its town fiesta on the 24th day of June, with lots of merry making, with street dancing and a week long hosting of various festivities which includes civic-military parade, cultural presentations of songs, dances from almost every sector of the community.Kuralda Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


 
                {

			answer = "Halamanan Festival",
			imagePath = "images/halaman_festival.png",
			hint = [[Halamanan Festival. It is a week long celebration featuring Street Dancing Competition, Float Parade, the Mayor's Ulat sa Bayan and Landscaping Contests culminating on January 23 which is the town's fiesta.]],  --multiline string
			trivia =[[Halamanan Festival. the Halamanan Festival is an annual celebration for Guiguinteños coinciding with the town's foundation day and the Feast of its Patron San Ildefonso. It is a week long celebration featuring Street Dancing Competition, Float Parade, the Mayor's Ulat sa Bayan and Landscaping Contests culminating on January 23 which is the town's fiesta.Halamanan Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


 
                {

			answer = "Salakayan Festival",
			imagePath = "images/salakayan_festival.png",
			hint = [[Salakayan Festival. Is a festival of Miagao is held every first week of February.]],  --multiline string
			trivia =[[Salakayan Festival. The Salakayan festival of Miagao is held every first week of February. Salakayan, coined from a Hiligaynon term “salakay” or “ to attack,” is a street dance-drama that merges arts, lore and customs of the town.Salakayan Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Pasayaw Festival",
			imagePath = "images/pasayaw_festival.png",
			hint = [[Pasayaw Festival. Since the 19th day of March 2008 is in the midst of the holy week.]],  --multiline string
			trivia =[[Pasayaw Festival. Is a combined word of “Pasalamat pinaagi sa sayaw” (thanksgiving through a dance). Pasayaw festival expresses joy and jubilation in praise and thanksgiving to the almighty God through the intercession of St. Joseph. Street dancing and showdown competition is done in honor of the Patron St. Joseph the worker.Pasayaw Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Balut sa Puti Festival",
			imagePath = "images/balut_sa_puti_festival.png",
			hint = [[Balut sa Puti Festival. Is a fertilized duck or chicken egg with a developing embryo inside.]],  --multiline string
			trivia =[[Balut sa Puti Festival. Is a food festival featuring a cooking competition of the famous Philippine delicacy known as balut. Balut is a fertilized duck or chicken egg with a developing embryo inside. The egg is boiled and then eaten with a pinch of salt, chili, or vinegar depending on individual taste.Balut sa Puti Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Kalesa Festival",
			imagePath = "images/kalesa_festival.png",
			hint = [[Kalesa Festival. Is a horse drawn calash used in the Philippines.]],  --multiline string
			trivia =[[Kalesa Festival. Is a horse drawn calash used in the Philippines. It was one mode of transportation introduced to the islands in the 18th century by Spanish colonisers, and was initially reserved for only nobles and high-ranking civic officials.These are today rarely used in the streets except in the tourist areas of old cities and some rural areas.Kalesa Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},



                {

			answer = "Fruit Festival",
			imagePath = "images/frutas_festival.png",
			hint = [[Fruit Festival. This day begins at 9:00 AM with the Arts, Crafts and Music Festival offering intrigue and excitement.]],  --multiline string
			trivia =[[Fruit Festival. Pangisdaan Festival (11th to 16th of January) One of the highlights of the Navotas Day celebration featuring a float and a streetdancing competition focusing on the fishing industry. Float design and streetdancers' costumes and props are made from any indigenous materials for fishing like lambat, baklad, kawayan.Fruit Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Feast of Our lady of candles",
			imagePath = "images/feast_of_our_lady of_candles.png",
			hint = [[Feast of Our Lady of Candles.The biggest and most opulent religiuos pageanty in Western Visayas.]],  --multiline string
			trivia =[[Feast of Our Lady ofOur Lady Candles. The religious celebration of Candelaria or Our Lady of the Candles includes its adornment in the most elaborate gown with the infant Jesus on her right arm and carrying a green candle on both hands. Other events include the traditional blessing of the candles, high mass, and the grand procession.Feast of Our lady of candles]],
			showHint = 1,
			level = 3,
			status = 1,
		},



                {

			answer = "Hinugyaw Festival",
			imagePath = "images/hinugyaw_festival.png",
			hint = [[Hinugyaw Festival. The six day festivities will culminate on April 30 with a grand parade in the afternoon featuring street dancing performers in their colorful costumes.]],  --multiline string
			trivia =[[Hinugyaw Festival. Hinugyaw Festival a local dialect that means rejoice/revelry is celebrated every 25th to 30th of April every year. The six day festivities will culminate on April 30 with a grand parade in the afternoon featuring street dancing performers in their colorful costumes.Hinugyaw Festival]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Pangisdaan Festival",
			imagePath = "images/pangisdaan_festival.png",
			hint = [[Pangisdaan Festival. One of the highlights of the Navotas Day celebration.]],  --multiline string
			trivia =[[Pangisdaan Festival. Hinugyaw Festival a local dialect that means rejoice/revelry is celebrated every 25th to 30th of April every year. The six day festivities will culminate on April 30 with a grand parade in the afternoon featuring street dancing performers in their colorful costumes.Pangisdaan festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Caracol festival",
			imagePath = "images/caracol_festival.png",
			hint = [[Caracol festival. Is a celebrated in makati city, phillipines.]],  --multiline string
			trivia =[[Caracol festival. Official festival of the City of Makati wherein participating groups are dressed in flowers, trees, birds, butterflies, fruits and other endangered species of animals in expression for the need to preserve and conserve mother nature.Caracol festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},



                {

			answer = "Sana-Aw Festival",
			imagePath = "images/sana_aw_festival.png",
			hint = [[Sana-Aw Festival. Primarily a celebration of the economic endeavor that made Jordan what it is today.]],  --multiline string
			trivia =[[Sana-Aw Festival. Is also pays tribute to the skillful artisans and the enduring workers in an endearing characterization through dance drama.Sana-Aw festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Bambanti Festival",
			imagePath = "images/bambati_festival.png",
			hint = [[Bambanti Festival. A fantasy-themed booth made by one of the municipalities of Isabela.]],  --multiline string
			trivia =[[Bambanti Festival. The Bambanti Festival is a huge success. It not only showcased Isabela as the socio-cultural hub of the north, but also as the new emerging agro-industrial capital of the Philippines.Bambanti festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

                {

			answer = "Boling-Boling Festival",
			imagePath = "images/boling_boling.png",
			hint = [[Boling-Boling Festival. Participants roam around the town garbed in any costume they may fancy.]],  --multiline string
			trivia =[[Boling-Boling Festival. It is an age-old practice particular to Catanauanins, which is celebrated annually. Participants roam around the town garbed in any costume they may fancy.  Most of them wear colorful clown-like clothes while others imitate anybody whom they want, be it somebody they idolize or somebody they despise, and make fun of them.  Boling-Boling comes from the Visayan word Boling which means dirt.Boling-Boling festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},


                {

			answer = "Bonifacio Day",
			imagePath = "images/bonifacio_day.png",
			hint = [[Bonifacio Day. Is a national public holiday in the Philippines that celebrates the birthday of one of the Philippines greatest heroes.]],  --multiline string
			trivia =[[Bonifacio Day. Kaarawan ni Bonifacio in Tagalog is a national public holiday in the Philippines that celebrates the birthday of one of the Philippines’ greatest heroes, Andres Bonifacio.Bonifacio Day.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

                {

			answer = "Santacruzan Festival",
			imagePath = "images/santacruzan.png",
			hint = [[Santacruzan Festival. Is held annually in the warm month of May and is considered to be the Queen of Filipino Festivals.]],  --multiline string
			trivia =[[Santacruzan Festival. Is also know as flores de mayo. Flores, from Spanish flores or flowers, also known as Flores de Mayo (flowers of May), Flores de Maria (flowers of Mary) or alay (offering), may refer to the whole Flower Festival celebrated in the month of May in tribute to the Virgin Mary.Santacruzan Festival.]],
			showHint = 1,
			level = 3,
			status = 1,
		},

                {

			answer = "Rizal Day",
			imagePath = "images/risal_day.png",
			hint = [[Rizal Day. Celebrated on the 30th of December.]],  --multiline string
			trivia =[[Rizal Day. Dr. Jose Rizal, the Philippines’ National Hero, is celebrated on his namesake day on the 30th of December. The first president of the Philippines, Emilio Aguinaldo, commemorated the first Rizal Day in 1898.Rizal Day.]],
			showHint = 1,
			level = 3,
			status = 1,
		},				

	}
M.eventQuestion = eventQuestion

return M