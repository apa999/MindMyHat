  //
  //  MockData.swift
  //  MindMyHatTests
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

@testable import MindMyHat
import Foundation

struct MockData {

  static let mockHat0 = Hat(id: 0,
                            title: "Snapback",
                            image: "Snapback",
                            description: "The ’90s style baseball cap burst onto the fashion scene after the New York snapback became increasingly popular with Yankees fans. Nowadays, snapbacks have cornered the market, being worn by cap connoisseurs, ballers, fashionistas, and cool kids all over the world. The name comes from the hat’s adjustable fastener at the back. Like its vintage cousin, the dad hat, it is also one-size-fits-all, providing a relaxed, oversized fit. However, the snapback is more rigid in its design, making it more structured. Snapbacks add an effortless yet instantly cool vibe to any outfit.",
                            price: 12.99)

  static let mockHat1 = Hat(id: 1,
                            title: "Beanie",
                            image: "Beanie",
                            description: "The ’90s style baseball cap burst onto the fashion scene after the New York snapback became increasingly popular with Yankees fans. Nowadays, snapbacks have cornered the market, being worn by cap connoisseurs, ballers, fashionistas, and cool kids all over the world. The name comes from the hat’s adjustable fastener at the back. Like its vintage cousin, the dad hat, it is also one-size-fits-all, providing a relaxed, oversized fit. However, the snapback is more rigid in its design, making it more structured. Snapbacks add an effortless yet instantly cool vibe to any outfit.",
                            price: 9.99)

  static let mockHat3 = Hat(id: 3,
                            title: "Fedora",
                            image: "Fedora",
                            description: "Love it or hate it, the Fedora has stood the test of time. Going from the hat of choice for gangsters in the 1920s and 1950s to a hipster staple item in the 2000s, Fedoras is probably one of the most polarising men’s accessories. Today the felt firm-brimmed hat is once again on-trend and a fantastic wardrobe addition. Although fedoras come in various sizes and colors, we’d suggest sticking to those with more neutral tones and medium widths.",
                            price: 15.99)

  static let mockHat11 = Hat(id: 11,
                             title: "Baseball Cap",
                             image: "baseball",
                             description: "From snapbacks to dad hats, there are so many variations of baseball caps, but you can never go past a classic. Baseball caps started off as simple five-panel caps with adjustable straps and were worn as part of baseball team uniforms. Today, they are as much a fashion item as a piece of sportswear. A favourite of street style stars and celebrities, the baseball cap has graduated to an iconic status because of its simple and cool designs",
                             price: 10.99)
  
  static let mockHats = [mockHat0, mockHat1, mockHat3, mockHat11]

  static let oneHatAsString = """
  {
  "Hats": [{
  "id" : 0,
  "title" : "Snapback",
  "image" : "Snapback",
  "description" : "The ’90s style baseball cap burst onto the fashion scene after the New York snapback became increasingly popular with Yankees fans. Nowadays, snapbacks have cornered the market, being worn by cap connoisseurs, ballers, fashionistas, and cool kids all over the world. The name comes from the hat’s adjustable fastener at the back. Like its vintage cousin, the dad hat, it is also one-size-fits-all, providing a relaxed, oversized fit. However, the snapback is more rigid in its design, making it more structured. Snapbacks add an effortless yet instantly cool vibe to any outfit.",
  "price" : 10.00
  }
  """

  static let oneHatAsData = Data(oneHatAsString.utf8)

  static let allHatsAsString = """
{
  "Hats": [{
  "id" : 0,
  "title" : "Snapback",
  "image" : "Snapback",
  "description" : "The ’90s style baseball cap burst onto the fashion scene after the New York snapback became increasingly popular with Yankees fans. Nowadays, snapbacks have cornered the market, being worn by cap connoisseurs, ballers, fashionistas, and cool kids all over the world. The name comes from the hat’s adjustable fastener at the back. Like its vintage cousin, the dad hat, it is also one-size-fits-all, providing a relaxed, oversized fit. However, the snapback is more rigid in its design, making it more structured. Snapbacks add an effortless yet instantly cool vibe to any outfit.",
  "price" : 10.00
},
{
  "id" : 1,
  "title" : "Beanie",
  "image" : "Beanie",
  "description" : "Once a mere winter essential, beanies have become genuinely timeless and trans-seasonal pieces. While you might not want to wear one in the middle of summer, you can pretty much rock a beanie from winter to spring. They go with a lot of styles and can easily take you from streetwear to sleek wear. These nifty knitted accessories can keep your head warm and your style hot. From chunky knitted winter woollies to stylish slouchy pieces, beanies are super versatile. We’d recommend going for one made of thin material and in a neutral color like navy or grey. This way, you can get the most wear out of it.",
  "price" : 10.00
},
{
  "id" : 2,
  "title" : "Trucker Hat",
  "image" : "TruckerHat",
  "description" : "First appearing in the ’70s, the trucker hat is one of the most popular hat choices today. With a peaked cap and a close-fit crown, it protects you from the sun while being casual enough for everyday wear. There are endless colors and designs to choose from, some featuring brand and sports team logos, symbols and prints. Wear it in laid-back events, such as hanging with your friends or going for a midday walk.",
  "price" : 10.00
},
{
  "id" : 3,
  "title" : "Fedora",
  "image" : "Fedora",
  "description" : "Love it or hate it, the Fedora has stood the test of time. Going from the hat of choice for gangsters in the 1920s and 1950s to a hipster staple item in the 2000s, Fedoras is probably one of the most polarising men’s accessories. Today the felt firm-brimmed hat is once again on-trend and a fantastic wardrobe addition. Although fedoras come in various sizes and colors, we’d suggest sticking to those with more neutral tones and medium widths.",
  "price" : 10.00
},
{
  "id" : 4,
  "title" : "Trilby",
  "image" : "Trilby",
  "description" : "Despite often being confused with a fedora, a trilby is a different type of hat. Made from tweed or straw, the Trilby features a smaller brim and taller crown than the fedora, meaning you can wear it from spring to autumn. Wear the trilby at the back of your head, instead of pulled forward to protect your face. It is a statement fashion piece rather than a functional hat.  They are the hats of choice for boy band members, such as Justin Timberlake, as well as members of the upper class, and are frequently spotted at horse racing events around the world",
  "price" : 10.00
},
{
  "id" : 5,
  "title" : "Panama Hat",
  "image" : "PanamaHat",
  "description" : "A Panama hat is perfect when paired with a beach backdrop and a white linen shirt. This traditional brimmed straw hat hails from Ecuador and will have you looking as hot as a Miami summer. Made from plaited leaves, the Panama hat has become a must-have accessory for seaside and tropical destinations. Panamas are made for sunshine and blue skies, so don’t try to rock this hat in winter. They are light in color and weight, breathable, easy to wear, and faultlessly fit with a laid-back beach style",
  "price" : 10.00
},
{
  "id" : 6,
  "title" : "Bowler",
  "image" : "Bowler",
  "description" : "The bowler hat is one of the most iconic items of British style, made famous by notable actors such as Charlie Chaplin, Curly Howard, and John Cleese. It is a hard, felt hat with a narrow brim and is also commonly known as a derby. This hat is a favorite of the upper, middle, and working class alike, but we would steer clear of wearing it casually. Try out this trend with double-breasted suits, tailored pants, dress shoes, a vintage Corvette, or a British accent. That type of thing.",
  "price" : 10.00
},
{
  "id" : 7,
  "title" : "Dad Hat",
  "image" : "DadHat",
  "description" : "While your dorky dad might not seem like someone to take fashion advice from, dad hats are awesome vintage accessories that scream laid-back style. These relaxed baseball caps are usually canvas or cotton with a slightly curved brim. The dad hat also sports an adjustable strapback closure, making it one-size-fits-all. Dad hats make great additions to any sports-luxe ensemble and can be used to add a vintage twist to any casual look.",
  "price" : 10.00
},
{
  "id" : 8,
  "title" : "Newsboy",
  "image" : "Newsboy",
  "description" : "Emerging in the 19th century, these old-school caps have made a big comeback in the 2000s. A newsboy hat is similar to a flat cap. These round and full caps have panels and a button on top, attaching the front of the hat to the brim. Gracing the heads of many affluent men and women, fashion houses have embraced traditional men’s caps. Many high street retailers also stock newsboy or baker boy caps.",
  "price" : 10.00
},
{
  "id" : 9,
  "title" : "Flat Cap",
  "image" : "FlatCap",
  "description" : "Popular among celebrities and television characters, flat caps come from humble roots. The flat cap was once typically worn by chimney sweepers and farmers. These stylish pieces of headwear come in wool, tweed or cotton. For extra warmth and comfort, these stiff-brimmed rounded caps are lined. Flat caps look best when paired with a smart casual style for a touch of char",
  "price" : 10.00
},
{
  "id" : 10,
  "title" : "Bucket Hat",
  "image" : "BucketHat",
  "description" : "Bucket hats are back, and the ’90s revival continues with no sign of stopping. Gaining popularity with various musical and skater subcultures, the bucket hat has gone from a humble fisherman’s hat to downright cool. Made from heavy-duty cotton fabrics such as denim and canvas, or wool blends like tweed, bucket hats feature wide, downward-sloping brims, resembling an inverted bucket. They have been a street style favorite for years and are perfect when trying to create a laid-back urban look. To rock the look, try throwing on a bucket hat with a bomber jacket, high tops, or even a jersey.",
  "price" : 10.00
},
{
  "id" : 11,
  "title" : "Baseball Cap",
  "image" : "BaseballCap",
  "description" : "From snapbacks to dad hats, there are so many variations of baseball caps, but you can never go past a classic. Baseball caps started off as simple five-panel caps with adjustable straps and were worn as part of baseball team uniforms. Today, they are as much a fashion item as a piece of sportswear. A favorite of street style stars and celebrities, the baseball cap has graduated to an iconic status because of its simple and cool designs.",
  "price" : 10.00
},
{
  "id" : 12,
  "title" : "Trapper Hat",
  "image" : "TrapperHat",
  "description" : "Warm, stylish and retro, a trapper hat should be on your winter must-haves list. Made from sheepskin suede with leather trim, trapper hats come in a variety of real and faux fur options. Modern editions of the trapper hat are available in a selection of plaids, corduroy, and various waterproof materials. These hats scream adventure and are perfect for the outdoorsman. Try rocking a flannelette shirt and blue jeans with this hat trend, instead of a shirt and tie.",
  "price" : 10.00
},
{
  "id" : 13,
  "title" : "Boater",
  "image" : "Boater",
  "description" : "The boater is another summer essential when it comes to men’s headwear. This stiff straw hat with a grosgrain ribbon around its crown peaked in popularity in the early 20th century. Often worn by barbershop quartets and in period dramas, they are now a rare sartorial sight. A boater hat is ideal if you’re looking to make a splash on the fashion scene this summer. They are a fun, chic, and original alternative to the Panama hat or a fedora. These flat-topped, wide-brimmed straw hats are definitely due for a comeback.",
  "price" : 10.00
},
{
  "id" : 14,
  "title" : "Pork Pie",
  "image" : "PorkPie",
  "description" : "After it became a recurring accessory on Breaking Bad, the pork pie grew increasingly popular. The men’s hat was one of the most popular in the 19th century. Today, hipsters mostly wear the pork pie style, which features a cylindrical crown. It also has a flat top that is pinched around the outer edge. These hats provide a classy, modern, and artistic aesthetic.",
  "price" : 10.00
},
{
  "id" : 15,
  "title" : "Visor",
  "image" : "Visor",
  "description" : "Typically seen in golf and tennis, the visor is a great accessory to keep the sun out of your eyes. This headwear features a peaked cap but doesn’t have a crown to secure it on the head. Instead, it includes a band above the ears – this can help stop sweat from entering the eyes while you work out. his is best suited for outdoor activities that need sun protection but isn’t too heavy to become distracting.",
  "price" : 10.00
},
{
  "id" : 16,
  "title" : "Cowboy Hat",
  "image" : "CowboyHat",
  "description" : "For centuries, the cowboy hat has been a staple in Mexico and the US history and culture. With a wide brim and a high crown, this headwear is suited to outdoor activities in dry and hot environments. While you would normally see these with a pair of jeans and western boots, you can style them with almost any casual outfit.",
  "price" : 10.00
},
{
  "id" : 17,
  "title" : "Homburg",
  "image" : "Homburg",
  "description" : "The Homburg hat is a semi-formal accessory that is often compared to a fedora. With a high crown and a dent running down the middle, it is usually made from felt and in a dark shade. It was originally worn during hunting excursions, but it became a popular choice by the likes of Sir Winton Churchill and Al Pacino in The Godfather.",
  "price" : 10.00
},
{
  "id" : 18,
  "title" : "Boonie Hat",
  "image" : "BoonieHat",
  "description" : "The Boonie hat is a popular choice for outdoor activities, especially in tropical climates. Originally intended for the army, it features a bucket hat silhouette with a wide brim. It’s usually made from soft and floppy fabrics and an adjustable chin strap. You’ll usually find them with eyelets or mesh on the crown to provide breathability in hot environments.",
  "price" : 10.00
},
{
  "id" : 19,
  "title" : "Top Hat",
  "image" : "TopHat",
  "description" : "There has still never been a piece of headwear as dominating or as sophisticated as the top hat. Don’t panic, we’re not suggesting you need to go Abe Lincoln style, but a shorter, stylish top hat will undoubtedly make you stand out in a crowd. These tall, flat-crowned, broad-brimmed hats were once the height of high-class dressing, but today they are a rarity. If you’re looking for a fun and fancy way to class up your next formal event, why not try a top hat?",
  "price" : 10.00
}]
}

"""

  static let allHatsAsData = Data(allHatsAsString.utf8)
}
