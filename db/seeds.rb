# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# #
USERS = [
      { first_name:"Tiffani",
        last_name: "Duong",
        email: "tiff@tiff.com",
        password: "test",
        languages:"English, Vietnamese, un poco espanol",
        bio: "Avid and experienced traveler. I enjoy backpacking, people watching, delicious food searches, and just being engulfed in different rich cultures."
       },
       { first_name:"Jon",
         last_name: "Snow",
         email: "jon@jon.com",
         password: "test",
         pf_img:"http://img.huffingtonpost.com/asset/scalefit_630_noupscale/56e024e81500002a000b1742.jpeg",
         languages:"English",
         bio:"I have not had time to venture outside of the wall.... since I've been dead..."
       },
       { first_name:"Poop",
         last_name: "Poop",
         email: "poop@poop.gov",
         password: "test",
         pf_img:"https://s-media-cache-ak0.pinimg.com/736x/a1/25/bd/a125bd16feccdb45207d1b41e4d69f8f.jpg",
         languages:"English, Spanish",
         bio:"Love to travel, bro. It's like totally awesome sauce. No gnarley biz."
       },
       { first_name:"Peter",
         last_name: "Griffin",
         email: "peter@griffin.com",
         password: "test",
         pf_img:"https://pbs.twimg.com/profile_images/1119269505/0509071614Peter_Griffin.jpg",
         languages:"English",
         bio:"hehehehehehehhehehehehehe. Shaaaataaap Meg!"
       }
     ]
#
#
POSTS = [
    {
      title: "Funnest Trip to Italy Ever.",
      text: "Venice Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "https://www.azamaraclubcruises.com/sites/default/files/heros/venice-italy.jpg",
      category: "City",
      location: "Italy",
      user_id: 4,
    },
    {
      title: "Patagonia Rocks!",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "http://a7004596b03128c36bd2-313eee040a6739ed30827c353f729c6b.r55.cf1.rackcdn.com/143/3/large.jpg",
      category: "Backpacking",
      location: "Chile",
      user_id: 1,
    },
    {
      title: "India was awesome! Hehehe",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "https://www.liverpool.ac.uk/media/research/india-fellowship-brochure-image.jpg",
      category: "City",
      location: "India",
      user_id: 3,
    },
    {
      title: "Had the best THAI-me",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. fkfnlekfelfkejflkfjelfkjelkajgalgkejglekgj gejglekgje lgekjgel gkegjle",
      image: "http://newmedia.thomson.co.uk/live/vol/0/921d4b57639916341dfa76e38310ff7bc13b11e2/1080x608/web/ASIAFAREASTTHAILANDTHAILANDDES_000423KHAOLAKRES_002378.jpg",
      category: "Beach",
      location: "Thailand",
      user_id: 1,
    },
    {
      title: "Port was absolutely breathtaking!",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "http://www.vayaadventures.com/wp-content/uploads/Valpo.jpg",
      category: "City",
      location: "Chile",
      user_id: 2,
    },
    {
      title: "Fantastic!",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "http://www.ultimatechase.com/Chase_Accounts/Images/Rio_De_Janeiro_Trip_2009/Rio_Brazil_2009_132.jpg",
      category: "City",
      location: "Brazil",
      user_id: 4,
    },
    {
      title: "Zion: The Narrows",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "http://images.nationalgeographic.com/wpf/media-live/photos/000/940/overrides/zion-narrows-hike-virgi-river_94017_600x450.jpg",
      category: "Nature",
      location: "USA",
      user_id: 1,
    },
    {
      title: "Half Dome Baby!",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
      image: "https://content-oars.netdna-ssl.com/wp-content/uploads/2015/12/Yosemite.Fran_.jpg",
      category: "Nature",
      location: "USA",
      user_id: 1,
    },
    {
      title: "Eifel Tower",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco fwfljwfk fwlkfej kjelf lpvf df.",
      image: "http://www.aviewoncities.com/img/paris/kvefr1243s.jpg",
      category: "City",
      location: "France",
      user_id: 1,
    },
    {
      title: "Great Wall was so..... Great. But, not as great as the Wall.",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcofefefe",
      image: "http://image.insider-journeys.com/overview/china.jpg",
      category: "Museum",
      location: "China",
      user_id: 2,
    },
    {
      title: "Eifel Tower",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco fwfljwfk fwlkfej kjelf lpvf df.",
      image: "https://cache-graphicslib.viator.com/graphicslib/thumbs360x240/7845/SITours/eiffel-tower-priority-access-ticket-with-host-in-paris-299567.jpg",
      category: "City",
      location: "France",
      user_id: 2,
    },
    {
      title: "Hello, Germany!",
      text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco fwfljwfk fwlkfej kjelf lpvf df.",
      image: "http://img.inspiredluxuryescapes.com/assets/Uploads/germant.jpg",
      category: "City",
      location: "Germany",
      user_id: 2,
    }
]
# TODO: delete tables first
  p User.create(USERS)
  p Post.create(POSTS)
