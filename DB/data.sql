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

(N'Jurassic World 3D',22.99,N'Steven Spielberg returns to executive produce the long-awaited next installment of his groundbreaking Jurassic Park series, Jurassic World','https://www.youtube.com/embed/RFinNxS5KN4','images\Product\Action & Adventure\Jurassic World.jpg',1,0,1),
(N'Mission Impossible',12.99,N'Tom Cruise ignites the screen in this runaway smash hit that "holds you on the edge of your seat before blasting you out of it" (Howard Rosenberg, Los Angeles Times).','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Action & Adventure\Mission Impossible.jpg',1,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','https://www.youtube.com/embed/8zI7weKj9oU','images\Product\Action & Adventure\The Naked City.jpg',1,0,1),
(N'Harry Potter and the Deathly Hallows',10.50,N'Harry Potter and the Deathly Hallows','https://www.youtube.com/embed/9hXH0Ackz6w','images\Product\Action & Adventure\Harry Potter and the Deathly Hallows.jpg',1,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','https://www.youtube.com/embed/yWXJ-jqg3is','images\Product\Action & Adventure\Attack on Titan.jpg',1,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','https://www.youtube.com/embed/4WXDJPaHuR4','images\Product\Action & Adventure\Spartacus.jpg',1,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','https://www.youtube.com/embed/1KmbWZXa2-M','images\Product\Action & Adventure\Naruto Shippuden.jpg',1,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','https://www.youtube.com/embed/4fVCKy69zUY','images\Product\Action & Adventure\The Croods.jpg',1,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','https://www.youtube.com/embed/kpKXkAkXzz4','images\Product\Action & Adventure\Battle Company.jpg',1,0,1),
(N'The Twilight Saga',5.99,N'The Twilight Saga: The Complete Collection follows the epic story of Bella (Kristin Stewart), Edward (Robert Pattinson) and Jacob (Taylor Lautner). ','https://www.youtube.com/embed/PQNLfo-SOR4','images\Product\Action & Adventure\The Twilight Saga.jpg',1,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','https://www.youtube.com/embed/jwwXBLUZIgw','images\Product\Action & Adventure\Hitman Steel Pack.jpg',1,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','https://www.youtube.com/embed/J7nJksXDBWc','images\Product\Action & Adventure\Sherlock Holmes.jpg',1,0,1),
(N'Jason Statham Triple Pack ',13.99,N'Sylvester Stallone directs and stars in this action-packed thriller with a cast that will take you straight back to the 80’s. Stallone plays Barney Ross, the leader of an elite team of mercenaries','https://www.youtube.com/embed/7fJGbTfFPkM','images\Product\Action & Adventure\Jason Statham Triple Pack.jpg',1,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','https://www.youtube.com/embed/rdHNcIcIKc8','images\Product\Action & Adventure\My Name Is Hmmm….jpg',1,0,1),
(N'Clangers Season 1 Episodes',4.99,N'description','https://www.youtube.com/embed/GUJX5JFaUpw','images\Product\Kid & Family\Clangers Season 1 Episodes.jpg',2,0,1),
(N'In The Night Garden',22.99,N'Clangers Season 1 Episodes 1-11 (2015)','https://www.youtube.com/embed/gChtW3u8Khk','images\Product\Kid & Family\In The Night Garden.jpg',2,0,1),
(N'Twirlywoos',6.99,N'In The Night Garden: Ninky Nonk Train And Track Set','https://www.youtube.com/embed/2qeAP6paLq0','images\Product\Kid & Family\Twirlywoos.jpg',2,0,1)


 INSERT INTO Products VALUES

(N'Hey Duggee',22.99,N'description','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Hey Duggee.jpg',2,0,1),
(N'Squirrel Club Sticker Activity',22.99,N'This fantastic book is full of stickers to decorate the scenes and complete the missions.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Squirrel Club Sticker Activity.jpg',2,0,1),
(N'Mike The Knight Sticker Book',3.99,N'Join Duggee and the Squirrels in this fun and engaging sticker activity book for little Squirrels everywhere. Complete the activities and use the sticky Squirrel Club badges to finish every page.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Mike The Knight Sticker Book.jpg',2,0,1),
(N'In the Night Garden',6.99,N'Rediscover your favourite characters from "In the Night Garden" in a whole new way! This "Bedtime Little Library" features Igglepiggle, Upsy Daisy, Makka Pakka, the Tomb','https://www.youtube.com/embed/gChtW3u8Khk','images\Product\Kid & Family\In The Night Garden.jpg',2,0,1),
(N'Phonics with Alphablocks',5.99,N'The Phonics with Alphablocks series is based on the highly popular CBeebies TV show giving a fun and entertaining way to learn phonics.	','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Phonics with Alphablocks.jpg',2,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fun sticker book. Join Bing as he shows you his favourite things i','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Bing Sticker Activity.jpg',2,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',2,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',2,0,1),
(N'Charlie & Lola',8.99,N'Delight your children with this complete collection of the fun and imaginative animated series featuring the charming Lola. ','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Charlie & Lola.jpg',2,0,1),
(N'Jurassic World 3D',22.99,N'Steven Spielberg returns to executive produce the long-awaited next installment of his groundbreaking Jurassic Park series, Jurassic World','https://www.youtube.com/embed/RFinNxS5KN4','images\Product\Action & Adventure\Jurassic World.jpg',3,0,1),
(N'In the Night Garden',6.99,N'Rediscover your favourite characters from "In the Night Garden" in a whole new way! This "Bedtime.','https://www.youtube.com/embed/gChtW3u8Khk','images\Product\Kid & Family\In The Night Garden.jpg',3,0,1),
(N'Phonics with Alphablocks',5.99,N'The Phonics with Alphablocks series is based on the highly popular CBeebies TV show giving a fun and entertaining way to learn phonics.	','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Phonics with Alphablocks.jpg',3,0,1),
(N'Clangers Season 1 Episodes',4.99,N'description','https://www.youtube.com/embed/GUJX5JFaUpw','images\Product\Kid & Family\Clangers Season 1 Episodes.jpg',3,0,1),
(N'Hey Duggee',22.99,N'description','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Hey Duggee.jpg',3,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','https://www.youtube.com/embed/8zI7weKj9oU','images\Product\Action & Adventure\The Naked City.jpg',3,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',3,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fPacked with stickers, packed with activities, packed with fun!','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Bing Sticker Activity.jpg',4,0,1)

INSERT INTO Products VALUES
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','https://www.youtube.com/embed/yWXJ-jqg3is','images\Product\Action & Adventure\Attack on Titan.jpg',4,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','https://www.youtube.com/embed/kpKXkAkXzz4','images\Product\Action & Adventure\Battle Company.jpg',4,0,1),
(N'Hey Duggee',22.99,N'description','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Hey Duggee.jpg',4,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','https://www.youtube.com/embed/kpKXkAkXzz4','images\Product\Action & Adventure\Battle Company.jpg',4,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','https://www.youtube.com/embed/J7nJksXDBWc','images\Product\Action & Adventure\Sherlock Holmes.jpg',4,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','https://www.youtube.com/embed/jwwXBLUZIgw','images\Product\Action & Adventure\Hitman Steel Pack.jpg',5,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',5,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',5,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',5,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',5,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','https://www.youtube.com/embed/jwwXBLUZIgw','images\Product\Action & Adventure\Hitman Steel Pack.jpg',5,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','https://www.youtube.com/embed/8zI7weKj9oU','images\Product\Action & Adventure\The Naked City.jpg',5,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','https://www.youtube.com/embed/rdHNcIcIKc8','images\Product\Action & Adventure\My Name Is Hmmm….jpg',6,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','https://www.youtube.com/embed/J7nJksXDBWc','images\Product\Action & Adventure\Sherlock Holmes.jpg',6,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','https://www.youtube.com/embed/rdHNcIcIKc8','images\Product\Action & Adventure\My Name Is Hmmm….jpg',6,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',6,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','https://www.youtube.com/embed/4fVCKy69zUY','images\Product\Action & Adventure\The Croods.jpg',6,0,1)

INSERT INTO Products VALUES
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',6,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',6,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','https://www.youtube.com/embed/jwwXBLUZIgw','images\Product\Action & Adventure\Hitman Steel Pack.jpg',6,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',6,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','https://www.youtube.com/embed/1KmbWZXa2-M','images\Product\Action & Adventure\Naruto Shippuden.jpg',6,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','https://www.youtube.com/embed/1KmbWZXa2-M','images\Product\Action & Adventure\Naruto Shippuden.jpg',7,0,1),
(N'Bing Sticker Activity',6.99,N'Discover the world of Bing with this colourful, fun sticker book. Join Bing as he shows you his favourite things in the whole wide world - friends, ','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Bing Sticker Activity.jpg',7,0,1),
(N'My Name Is Hmmm…',8.99,N'My Name Is Hmmm..., the debut from clothes designer Agnès Troublé AKA Agnès b., follows Céline as she escapes an absent mother and abusive father by smuggling herself aboard the cab of an international freight truck','https://www.youtube.com/embed/rdHNcIcIKc8','images\Product\Action & Adventure\My Name Is Hmmm….jpg',7,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','https://www.youtube.com/embed/4WXDJPaHuR4','images\Product\Action & Adventure\Spartacus.jpg',7,0,1),
(N'Hey Duggee',22.99,N'description','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Hey Duggee.jpg',7,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','https://www.youtube.com/embed/4WXDJPaHuR4','images\Product\Action & Adventure\Spartacus.jpg',7,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','https://www.youtube.com/embed/J7nJksXDBWc','images\Product\Action & Adventure\Sherlock Holmes.jpg',7,0,1),
(N'Naruto Shippuden',15.99,N'This special edition 5 disc box set contains all five epic Naruto Shippuden movies including:Naruto Shippuden The Movie','https://www.youtube.com/embed/1KmbWZXa2-M','images\Product\Action & Adventure\Naruto Shippuden.jpg',8,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','https://www.youtube.com/embed/yWXJ-jqg3is','images\Product\Action & Adventure\Attack on Titan.jpg',8,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',8,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','https://www.youtube.com/embed/4fVCKy69zUY','images\Product\Action & Adventure\The Croods.jpg',8,0,1)


INSERT INTO Products VALUES
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','https://www.youtube.com/embed/8zI7weKj9oU','images\Product\Action & Adventure\The Naked City.jpg',8,0,1),
(N'Hitman Steel Pack',13.99,N'HITMAN roars to life with both barrels blazing in this hardcore action-thriller starring Timothy Olyphant (Die Hard 4.0).','https://www.youtube.com/embed/jwwXBLUZIgw','images\Product\Action & Adventure\Hitman Steel Pack.jpg',8,0,1),
(N'Bing Sticker Activity',6.99,N'the colour orange, his wellies, carrots and more. Packed with stickers, packed with activities, packed with fun!','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Bing Sticker Activity.jpg',8,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','https://www.youtube.com/embed/4fVCKy69zUY','images\Product\Action & Adventure\The Croods.jpg',9,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','https://www.youtube.com/embed/kpKXkAkXzz4','images\Product\Action & Adventure\Battle Company.jpg',9,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','https://www.youtube.com/embed/yWXJ-jqg3is','images\Product\Action & Adventure\Attack on Titan.jpg',9,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',9,0,1),
(N'Sherlock Holmes',22.99,N'Explosive action, baffling mystery and astonishing intrigue follow Sherlock Holmes (Robert Downey Jr.) and his trusted ally Watson (Jude Law) in a race to uncover and foil a terrifying plot that threatens to destroy the country','https://www.youtube.com/embed/J7nJksXDBWc','images\Product\Action & Adventure\Sherlock Holmes.jpg',9,0,1),
(N'Battle Company',17.99,N'Please check the stock availability notice on your item when placing your order. This item is: In stock | Usually dispatched within 24 hours','https://www.youtube.com/embed/kpKXkAkXzz4','images\Product\Action & Adventure\Battle Company.jpg',9,0,1),
(N'Hey Duggee',22.99,N'description','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Hey Duggee.jpg',9,0,1),
(N'The Croods',6.99,N'From makers of Shrek and Madagascar, comes The Croods! Join the first modern family as they embark on the journey of a lifetime across a spectacular and unforgettable landscape. ','https://www.youtube.com/embed/4fVCKy69zUY','images\Product\Action & Adventure\The Croods.jpg',10,0,1),
(N'Spartacus ',8.99,N'Directed by one of the greatest film directors of all-time, Stanley Kubrick (The Shining, A clockwork Orange) and starring Kirk Douglas (20,000 Leagues Under the Sea) as the titular hero,','https://www.youtube.com/embed/4WXDJPaHuR4','images\Product\Action & Adventure\Spartacus.jpg',10,0,1),
(N'Attack on Titan',23.99,N'Several hundred years ago, humans were nearly exterminated by giants. Giants are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source.','https://www.youtube.com/embed/yWXJ-jqg3is','images\Product\Action & Adventure\Attack on Titan.jpg',10,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',10,0,1),
(N'Dinopaws ',7.99,N'The world is new and we are too. Let’s find everything and see what it can do.” It’s a Magical Prehistory Tour! Once upon a long long long long long long time, a billion years before the birth of pre-school television','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Dinopaws.jpg',10,0,1),
(N'The Naked City',34.99,N'There are eight million stories in the Naked City. This is one of them.','https://www.youtube.com/embed/8zI7weKj9oU','images\Product\Action & Adventure\The Naked City.jpg',10,0,1),
(N'Kate & Mim-Mim',22.99,N'Kate and Mim-Mim tells the story of the special friendship between feisty five-year-old Kate and her toy bunny Mim-Mim.','https://www.youtube.com/embed/nmC6rZyByzk','images\Product\Kid & Family\Kate & Mim-Mim.jpg',10,0,1)


select * from Products