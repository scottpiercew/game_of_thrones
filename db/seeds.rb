# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "House Stark", words: "Winter is Coming", region: "The North", img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142")
lannister = House.create(name: "House Lannister", words: "A Lannister Always Pays His Debts", region: "The Westerlands", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20170101095357")
tyrell = House.create(name: "House Tyrell", words: "Growing Strong", region: "The Reach", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20170108163035")
greyjoy = House.create(name: "House Greyjoy", words: "What Is Dead May Never Die", region: "Iron Islands", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20170523015836")
targaryen = House.create(name: "House Targaryen", words: "Fire and Blood", region: "Bay of Dragons", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20170510235320")
nights_watch = House.create(name: "The Night's Watch", words: "Night gathers, and now my watch begins. It shall not end until my death.", region: "The Wall", img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/e/ed/Night%27s-Watch-Main-Shield.PNG/revision/latest?cb=20161231113156")


jon = Character.create(name: "Jon Snow", title: "King in the North, Lord Commander of the Night's Watch", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/0/05/GoT-Sn7_FirstLook_09.jpg/revision/latest?cb=20170420183850", house: nights_watch)
arya = Character.create(name: "Arya Stark", title: "Princess", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/e/ea/GoT-Sn7_FirstLook_10_.jpg/revision/latest?cb=20170420183850", house: stark)
daenerys = Character.create(name: "Daenerys Targaryen", title: "Mother of Dragons, Breaker of Chains, Khaleesi", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/88/Daenerys_Targaryen_S7_Promo_Image.PNG/revision/latest?cb=20170420191154", house: targaryen)
cersei = Character.create(name: "Cersei Lannister", title: "Queen of the Andals and the First Men, Protector of the Seven Kingdoms", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest?cb=20161215024728", house: lannister)
olenna = Character.create(name: "Olenna Tyrell", title: "The Queen of Thorns", img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/b/bb/Olenna_season_6_a.jpg/revision/latest?cb=20160718204242", house: tyrell)
yara = Character.create(name: "Yara Greyjoy", title: "Queen of the Iron Islands", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/a/a8/Game_of_thrones_6x5_yara_promo.jpg/revision/latest?cb=20160808022737", house: greyjoy)
