--@block
INSERT INTO brand
(name, description)
VALUES
("Samsung", "Korean company");

--@block
INSERT INTO brand
    (name, description)
VALUES
    ("Xiaomi", "Chinese company"),
    ("Apple", "American company"),
    ("Realme", "ChingCHong company"),
    ("Huawei", "banned chinese company");


-- adding logo image urls
--@block
UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2016/05/Xiaomi_Logo_2021.svg"
WHERE name = "Xiaomi";

UPDATE brand
SET logo_url = "https://www.kindpng.com/picc/m/199-1996327_logo-huawei-hd-png-download.png"
WHERE name = "Huawei";

UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2016/02/Samsung_Logo_2005.svg"
WHERE name = "Samsung";

UPDATE brand
SET logo_url = "https://image01.realme.net/general/20181116/1542370418184.jpg"
WHERE name = "Realme";

UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2017/07/Apple_Logo_1998.svg"
WHERE name = "Apple";

--@block
UPDATE brand
SET description = "Xiaomi Corporation registered in Asia as Xiaomi Inc., is a Chinese multinational electronics company founded in April 2010 and headquartered in Beijing. The 'MI' in their logo stands for 'Mobile Internet'. It also has other meanings, including 'Mission Impossible', because Xiaomi faced many challenges that had seemed impossible to defy in their early days. Xiaomi released its first smartphone in August 2011 and rapidly gained market share in China to become the country's largest smartphone company in 2014. At the start of second quarter of 2018, Xiaomi was the world's fourth-largest smartphone manufacturer, leading in both the largest market, China, and the second-largest market, India. Xiaomi has 18,170 employees worldwide. It has expanded to other markets including Greater China, Singapore, Japan, South Korea, Russia, South Africa and most countries and regions in Southeast Asia and Europe. According to Forbes, Lei Jun, the founder and CEO, has an estimated net worth of US$12.5 billion. Xiaomi is the world's 4th most valuable technology start-up after receiving US$1.1 billion funding from investors, making Xiaomi's valuation more than US$46 billion. Ranked 468th, Xiaomi is the youngest company on Fortune Global 500 list for 2019. In 2019, Xiaomi's mobile phone shipments reached 125 million units, ranking fourth globally since 2018. According to Canalys, in the second quarter of 2021, Xiaomi was the second biggest smartphone maker globally in terms of sales."
WHERE name = "Xiaomi";

--@block
UPDATE brand
SET description = "The Samsung Group is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses in which most of them united under the Samsung brand, and is the largest South Korean chaebol. As of 2020, Samsung has the 8th highest global brand Samsung was founded by Lee Byung-chul in 1938 as a trading company. Over the next three decades, the group diversified into areas including food processing, textiles, insurance, securities, and retail. Samsung entered the electronics industry in the late 1960s and the construction and shipbuilding industries in the mid-1970s; these areas would drive its subsequent growth. Following Lee's death in 1987, Samsung was separated into five business groups – Samsung Group, Shinsegae Group, CJ Group and Hansol Group, and Joongang Group.

Notable Samsung industrial affiliates include Samsung Electronics which is the world's largest information technology company, consumer electronics maker and chipmaker measured by 2017 revenues.

Samsung is committed to complying with local laws and regulations as well as applying a strict global code of conduct to all employees. It believes that ethical management is not only a tool for responding to the rapid changes in the global business environment, but also a vehicle for building trust with its various stakeholders including customers, shareholders, employees, business partners and local communities. With an aim to become one of the most ethical companies In the world, Samsung continues to train its employees and operate monitoring systems, while practicing fair and transparent corporate management."
WHERE name = "Samsung";

--@block
UPDATE brand
SET description = "Apple was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne in 1976 to develop and sell Wozniak's Apple I personal computer. It was incorporated by Jobs and Wozniak as Apple Computer, Inc. in 1977, and sales of its computers, including the Apple II, grew quickly. They went public in 1980 to instant financial success. Over the next few years, Apple shipped new computers featuring innovative graphical user interfaces, such as the original Macintosh, announced with the critically acclaimed advert '1984'. However, the high price of its products and limited application library caused problems, as did power struggles between executives. In 1985, Wozniak departed Apple amicably, while Jobs resigned to found NeXT, taking some Apple co-workers with him.

As the market for personal computers expanded and evolved through the 1990s, Apple lost considerable market share to the lower-priced duopoly of Microsoft Windows on Intel PC clones. The board recruited CEO Gil Amelio, who prepared the struggling company for eventual success with extensive reforms, product focus and layoffs in his 500 day tenure. In 1997, Gil bought NeXT, to resolve Apple's unsuccessful OS strategy and bring back Steve Jobs, who replaced Amelio as CEO later that year. Apple returned to profitability under the revitalizing 'Think different' campaign, launching the iMac and iPod, opening a retail chain of Apple Stores in 2001, and acquiring numerous companies to broaden their software portfolio. In 2007, the company launched the iPhone to critical acclaim and financial success. In 2011, Jobs resigned as CEO due to health complications, and died two months later. He was succeeded by Tim Cook.

In August 2018, Apple became the first publicly traded U.S. company to be valued at over $1 trillion and the first valued over $2 trillion two years later. It has a high level of brand loyalty and is ranked as the world's most valuable brand; as of January 2021, there are 1.65 billion Apple products in use worldwide."
WHERE name = "Apple";

--@block
UPDATE brand
SET description = "The company was founded in 1987 by Ren Zhengfei, a former Deputy Regimental Chief in the People's Liberation Army. Initially focused on manufacturing phone switches, Huawei has expanded its business to include building telecommunications networks, providing operational and consulting services and equipment to enterprises inside and outside of China, and manufacturing communications devices for the consumer market. Huawei has over 194,000 employees as of December 2019.

Huawei has deployed its products and services in more than 170 countries and areas. It overtook Ericsson in 2012 as the largest telecommunications equipment manufacturer in the world, and overtook Apple in 2018 as the second-largest manufacturer of smartphones in the world, behind Samsung Electronics. In 2018, Huawei reported that its annual revenue was US$108.5 billion. In July 2020, Huawei surpassed Samsung and Apple to become the top smartphone brand (in number of phones shipped) in the world for the first time.

Huawei’s mission is to bring digital to every person, home and organization for a fully connected, intelligent world. To this end, we will: drive ubiquitous connectivity and promote equal access to networks to lay the foundation for the intelligent world; provide the ultimate computing power to deliver ubiquitous cloud and intelligence; build powerful digital platforms to help all industries and organizations become more agile, efficient, and dynamic; redefine user experience with AI, offering consumers more personalized and intelligent experiences across all scenarios, including home, travel, office, entertainment, and fitness & health."
WHERE name = "Huawei";

-- --@block
-- UPDATE brand
-- SET description = "Realme is a Chinese smartphone manufacturer headquartered in Shenzhen. The company was founded on May 4, 2018, by Sky Li (Li Bingzhong), who was former vice president of Oppo. It is a spinoff from Oppo who collectively owns it with BBK Electronics. The aspiration of realme is to provide products with a comprehensive superior experience for the young, and realme is committed to be a trendsetting technology brand.

-- Due to the abilities in cutting-edge technologies of smartphones and IoT, realme brings consumers products with trendsetting technologies, features and trendsetting experiences that are first applied in the price segment.

-- At the beginning of 2020, realme announced its dual driven strategy of “Smartphone + AIoT”. In June of 2020, realme's global users of smartphone reached 35 million and its sales volume of AIoT audio products broke the record of 1 million. According to the statistics of Counterpoint global smartphone shipments in Q1 of 2020, the emerging smartphone brand realme still ranks 7th with year-over-year growth rate of 157% which ranks the first in the world as well. As the world's fastest-growing smartphone brand, realme stands firmly among the mainstream smartphone brands."
-- WHERE name = "Realme"