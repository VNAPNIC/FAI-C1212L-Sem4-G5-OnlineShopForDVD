USE OnlineShopForDVD
GO



INSERT INTO Categories VALUES
(N'Action & Adventure', 1),
(N'Kid & Family',1),
(N'Anime',1),
(N'Drama Films DVD',1),
(N'Films',1),
(N'Fantasy',1),
(N'Music',1),
(N'Sport',1),
(N'World Cinema',1),
(N'Travel',1)

select * from Categories
--------------------------------------------------


INSERT INTO Products VALUES

(N'Jurassic World 3D',22.99,N'Steven Spielberg returns to executive produce the long-awaited next installment of his groundbreaking Jurassic Park series, Jurassic World','RFinNxS5KN4','images\Product\Action & Adventure\jurassicworld.jpg',1,0,1),
(N'Mission Impossible',12.99,N'Tom Cruise ignites the screen in this runaway smash hit that "holds you on the edge of your seat before blasting you out of it" (Howard Rosenberg, Los Angeles Times).','nmC6rZyByzk','images\Product\Action & Adventure\missionimpossible.jpg',1,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','8zI7weKj9oU','images\Product\Action & Adventure\thenakedcity.jpg',1,0,1),
(N'Harry Potter and the Deathly Hallows',10.50,N'Harry Potter and the Deathly Hallows','9hXH0Ackz6w','images\Product\Action & Adventure\harrypotterandthedeathlyhallows.jpg',1,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','yWXJ-jqg3is','images\Product\Action & Adventure\attackontitan.jpg',1,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','4WXDJPaHuR4','images\Product\Action & Adventure\spartacus.jpg',1,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','1KmbWZXa2-M','images\Product\Action & Adventure\narutoshippuden.jpg',1,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','4fVCKy69zUY','images\Product\Action & Adventure\thecroods.jpg',1,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','kpKXkAkXzz4','images\Product\Action & Adventure\battlecompany.jpg',1,0,1),
(N'The Twilight Saga',5.99,N'The Twilight Saga: The Complete Collection follows the epic story of Bella (Kristin Stewart), Edward (Robert Pattinson) and Jacob (Taylor Lautner). ','PQNLfo-SOR4','images\Product\Action & Adventure\thetwilightsaga.jpg',1,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','jwwXBLUZIgw','images\Product\Action & Adventure\hitmansteelpack.jpg',1,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','J7nJksXDBWc','images\Product\Action & Adventure\sherlockholmes.jpg',1,0,1),
(N'Jason Statham Triple Pack ',13.99,N'Sylvester Stallone directs and stars in this action-packed thriller with a cast that will take you straight back to the 80’s. Stallone plays Barney Ross, the leader of an elite team of mercenaries','7fJGbTfFPkM','images\Product\Action & Adventure\jasonstathamtriplepack.jpg',1,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','rdHNcIcIKc8','images\Product\Action & Adventure\mynameishmmm.jpg',1,0,1),
(N'Clangers Season 1 Episodes',4.99,N'description','  8GUJX5JFaUpw','images\Product\Kid & Family\clangersseasonepisodes.jpg',2,0,1),
(N'In The Night Garden',22.99,N'Clangers Season 1 Episodes 1-11 (2015)','gChtW3u8Khk','images\Product\Kid & Family\inthenightgarden.jpg',2,0,1),
(N'Twirlywoos',6.99,N'In The Night Garden: Ninky Nonk Train And Track Set','2qeAP6paLq0','images\Product\Kid & Family\twirlywoos.jpg',2,0,1)


 INSERT INTO Products VALUES

(N'Hey Duggee',22.99,N'description','nmC6rZyByzk','images\Product\Kid & Family\heyduggee.jpg',2,0,1),
(N'Squirrel Club Sticker Activity',22.99,N'This fantastic book is full of stickers to decorate the scenes and complete the missions.','nmC6rZyByzk','images\Product\Kid & Family\squirrelclubstickeractivity.jpg',2,0,1),
(N'Mike The Knight Sticker Book',3.99,N'Join Duggee and the Squirrels in this fun and engaging sticker activity book for little Squirrels everywhere. Complete the activities and use the sticky Squirrel Club badges to finish every page.','nmC6rZyByzk','images\Product\Kid & Family\miketheknightstickerbook.jpg',2,0,1),
(N'In the Night Garden',6.99,N'Rediscover your favourite characters from "In the Night Garden" in a whole new way! This "Bedtime Little Library" features Igglepiggle, Upsy Daisy, Makka Pakka, the Tomb','gChtW3u8Khk','images\Product\Kid & Family\inthenightgarden.jpg',2,0,1),
(N'Phonics with Alphablocks',5.99,N'The Phonics with Alphablocks series is based on the highly popular CBeebies TV show giving a fun and entertaining way to learn phonics.	','nmC6rZyByzk','images\Product\Kid & Family\phonicswithalphablocks.jpg',2,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fun sticker book. Join Bing as he shows you his favourite things i','nmC6rZyByzk','images\Product\Kid & Family\bingstickeractivity.jpg',2,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',2,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',2,0,1),
(N'Charlie & Lola',8.99,N'Delight your children with this complete collection of the fun and imaginative animated series featuring the charming Lola. ','nmC6rZyByzk','images\Product\Kid & Family\charlielola.jpg',2,0,1),
(N'Jurassic World 3D',22.99,N'Steven Spielberg returns to executive produce the long-awaited next installment of his groundbreaking Jurassic Park series, Jurassic World','RFinNxS5KN4','images\Product\Action & Adventure\jurassicworld.jpg',3,0,1),
(N'In the Night Garden',6.99,N'Rediscover your favourite characters from "In the Night Garden" in a whole new way! This "Bedtime.','gChtW3u8Khk','images\Product\Kid & Family\inthenightgarden.jpg',3,0,1),
(N'Phonics with Alphablocks',5.99,N'The Phonics with Alphablocks series is based on the highly popular CBeebies TV show giving a fun and entertaining way to learn phonics.	','nmC6rZyByzk','images\Product\Kid & Family\phonicswithalphablocks.jpg',3,0,1),
(N'Clangers Season 1 Episodes',4.99,N'description','GUJX5JFaUpw','images\Product\Kid & Family\clangersseasonepisodes.jpg',3,0,1),
(N'Hey Duggee',22.99,N'description','nmC6rZyByzk','images\Product\Kid & Family\heyduggee.jpg',3,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','8zI7weKj9oU','images\Product\Action & Adventure\thenakedcity.jpg',3,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',3,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fPacked with stickers, packed with activities, packed with fun!','nmC6rZyByzk','images\Product\Kid & Family\bingstickeractivity.jpg',4,0,1)

INSERT INTO Products VALUES
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','yWXJ-jqg3is','images\Product\Action & Adventure\attackontitan.jpg',4,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','kpKXkAkXzz4','images\Product\Action & Adventure\battlecompany.jpg',4,0,1),
(N'Hey Duggee',22.99,N'description','nmC6rZyByzk','images\Product\Kid & Family\heyduggee.jpg',4,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','kpKXkAkXzz4','images\Product\Action & Adventure\battlecompany.jpg',4,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','J7nJksXDBWc','images\Product\Action & Adventure\sherlockholmes.jpg',4,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','jwwXBLUZIgw','images\Product\Action & Adventure\hitmansteelpack.jpg',5,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',5,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',5,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',5,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',5,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','jwwXBLUZIgw','images\Product\Action & Adventure\hitmansteelpack.jpg',5,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','8zI7weKj9oU','images\Product\Action & Adventure\thenakedcity.jpg',5,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','rdHNcIcIKc8','images\Product\Action & Adventure\mynameishmmm.jpg',6,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','J7nJksXDBWc','images\Product\Action & Adventure\sherlockholmes.jpg',6,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','rdHNcIcIKc8','images\Product\Action & Adventure\mynameishmmm.jpg',6,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',6,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','4fVCKy69zUY','images\Product\Action & Adventure\narutoshippuden.jpg',6,0,1)

INSERT INTO Products VALUES
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',6,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',6,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','jwwXBLUZIgw','images\Product\Action & Adventure\hitmansteelpack.jpg',6,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','1KmbWZXa2-M','images\Product\Action & Adventure\narutoshippuden.jpg',6,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','1KmbWZXa2-M','images\Product\Action & Adventure\narutoshippuden.jpg',7,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fun sticker book. Join Bing as he shows you his favourite things in the whole wide world - friends, ','nmC6rZyByzk','images\Product\Kid & Family\bingstickeractivity.jpg',7,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','rdHNcIcIKc8','images\Product\Action & Adventure\mynameishmmm.jpg',7,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','4WXDJPaHuR4','images\Product\Action & Adventure\spartacus.jpg',7,0,1),
(N'Hey Duggee',22.99,N'description','nmC6rZyByzk','images\Product\Kid & Family\heyduggee.jpg',7,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','4WXDJPaHuR4','images\Product\Action & Adventure\spartacus.jpg',7,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','J7nJksXDBWc','images\Product\Action & Adventure\sherlockholmes.jpg',7,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','1KmbWZXa2-M','images\Product\Action & Adventure\narutoshippuden.jpg',8,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','yWXJ-jqg3is','images\Product\Action & Adventure\attackontitan.jpg',8,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',8,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','4fVCKy69zUY','images\Product\Action & Adventure\narutoshippuden.jpg',8,0,1)


INSERT INTO Products VALUES
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','8zI7weKj9oU','images\Product\Action & Adventure\thenakedcity.jpg',8,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','jwwXBLUZIgw','images\Product\Action & Adventure\hitmansteelpack.jpg',8,0,1),
(N'Bing Sticker Activity',6.99,N'the colour orange, his wellies, carrots and more. Packed with stickers, packed with activities, packed with fun!','nmC6rZyByzk','images\Product\Kid & Family\bingstickeractivity.jpg',8,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','4fVCKy69zUY','images\Product\Action & Adventure\narutoshippuden.jpg',9,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','kpKXkAkXzz4','images\Product\Action & Adventure\battlecompany.jpg',9,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','yWXJ-jqg3is','images\Product\Action & Adventure\attackontitan.jpg',9,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',9,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','J7nJksXDBWc','images\Product\Action & Adventure\sherlockholmes.jpg',9,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','kpKXkAkXzz4','images\Product\Action & Adventure\battlecompany.jpg',9,0,1),
(N'Hey Duggee',22.99,N'description','nmC6rZyByzk','images\Product\Kid & Family\heyduggee.jpg',9,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','4fVCKy69zUY','images\Product\Action & Adventure\narutoshippuden.jpg',10,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','4WXDJPaHuR4','images\Product\Action & Adventure\spartacus.jpg',10,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','yWXJ-jqg3is','images\Product\Action & Adventure\attackontitan.jpg',10,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',10,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','nmC6rZyByzk','images\Product\Kid & Family\dinopaws.jpg',10,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','8zI7weKj9oU','images\Product\Action & Adventure\thenakedcity.jpg',10,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','nmC6rZyByzk','images\Product\Kid & Family\katemimmim.jpg',10,0,1)


select * from Products