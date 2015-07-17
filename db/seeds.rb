# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create({name: "Jessica Engel", username:"JessicaEngel", password: "12345678", password_confirmation: "12345678", email: "admin@admin.com", description: "I have been coding, crafting, and creating since childhood. I'm happiest when I'm learning something new around people who feel the same. I take responsibility for the quality of every project, whether I'm alone or collaborating. Feel free to contact me if you want a hardworking addition to your team, or just feel the need to hear an embarrassingly loud laugh.", github:"https://github.com/JessicaEpdx", linkedin:"https://www.linkedin.com/in/jessengel", image:"https://media.licdn.com/media/AAEAAQAAAAAAAADLAAAAJGZjMjM1ZjU5LTI3MmEtNGQ3MC1iMjQ2LTVkZTNkNzgwOWI1MA.jpg", admin: true})

users = User.create({name: "Coolio", username:"TheCoolest", password: "12345678", password_confirmation: "12345678", email: "Coolio@coolio.com", description: "As I walk through the valley of the shadow of death, I take a look at my life and realize there's nothing left.", github:"https://github.com", linkedin:"https://www.linkedin.com", image:"http://static.giantbomb.com/uploads/scale_small/0/6865/229209-coolio_large.jpg"})

skills = Skill.create([
{name: "Ruby" , description: "Learning Ruby has allowed me to really dive deep into my understanding of Objects and Classes as well as one to many and many to many relationships."  },
{name: "Javascript", description: "Leveraging my existing knowledge of Javascript I pushed even further during my time at Epicodus in my understanding of Javascript and JQuery." },
{name: "Rails", description: "Using Rails I have been able to build sites with CRUD functionality, including this one!" },
{name: "Ember", description: "I have used beta versions of Ember as well as Ember CLI to create dynamic sites that AJAX load and use various APIs." },
{name: "CSS", description: "I have been working with CSS since I was very young. I create my own styling and have also used bootstrap for forms and grids and then make it my own on top of their styles. " } ])

projects = Project.create([
{name: "Pizza Pal", description: "Pizza Pal is a site that allows users to add ingredients to a pizza and order multiple quantities.", image_url:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/pizza.png", url:"http://www.jessicaengel.com/pizza/", skill_id:2},
{name:  "Pig Die", description: "Pig Die is a horror themed Pig Dice Game built with Javascript", image_url:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/pigdie.png", url:"http://www.jessicaengel.com/pigdie/" ,skill_id:2},
{name: "Task Manager", description: "Task Manager is a web app that allows you to add tasks, see descriptions, and send them to your completed list to watch them get crossed off.", image_url:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/taskmanager.png", url: "http://www.jessicaengel.com/taskmanager/",skill_id:2},
{name: "Catbox", description:"CatBox is a social networking site for your Cat! CatBox also allows the user to upload a picture and profile of their kitty in a battle of cuteness against other uploaded cats, in the Battle Cats game on your cats' profile page." , image_url:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png", url:"https://github.com/JessicaEpdx/cat_box" ,skill_id:1},
{name: "YouHole", description:"Collaboration Project, using a YouTube API. YouHole is a YouTube aggregator for videos with a very small view count. It was built with EmberCLI." , image_url:"", url:"https://github.com/JessicaEpdx/youtube_api" ,skill_id:4},
{name: "Frequency", description:"Freq was an early project of mine learning Ruby. It is a website where a user inputs a word and a string and the following page will return the number of times that word appears in the string." , image_url:"http://i13.photobucket.com/albums/a270/applicantattack/Screen%20Shot%202015-07-02%20at%202.04.46%20PM.png", url:"https://github.com/JessicaEpdx/freq" ,skill_id:1},
{name: "Catbox", description:"CatBox is a social networking site for your Cat! CatBox also allows the user to upload a picture and profile of their kitty in a battle of cuteness against other uploaded cats, in the Battle Cats game on your cats' profile page. It was a collaboration project and we worked hard to make sure it had a simple and modern look for the cats of our time." , image_url:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png", url:"https://github.com/JessicaEpdx/cat_box" ,skill_id:5} ])

posts = Post.create([
  {title:"Here is my new post", content:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"}
  ])

comments = Comment.create([
  {title:"Here is a comment!", content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", post_id: 1, author_id: 2},
  {title:"This is what I think", content:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", post_id: 1, author_id: 1}
])

references = Reference.create([
{name: "Kelsey Keenan", phone:"603-555-5555", address:"Portland, OR", employer:"Shandong Restaurant", job_title:"Manager", email:"Kelsey@kels.com"},
{name: "Lauren Sieffert", phone:"503-567-5555", address:"Portland, OR", employer:"Kung Pow!", job_title:"Manager", email:"Lauren@kp.com"},
{name: "Tia Marola", phone:"603-555-5455", address:"Framingham, MA", employer:"Newton Middle", job_title:"Inclusion Facilitator", email: "t.marola@school.com"}
])

recommendations = Recommendation.create([
  {recommender:'Jessica Engel', title:"Codrops", url:"http://tympanus.net/codrops/", image:"http://codropspz.tympanus.netdna-cdn.com/codrops/wp-content/uploads/2015/03/PlayfulTrampolineEffect-105x105.jpg", description:"CoDrops has greta tutorials and is very well organized. I gather a ton of inspiration from there!"},
  {recommender:'Jessica Engel', title:"Awwwards", url:"http://www.awwwards.com/", image:"http://www.awwwards.com/media/cache/thumb_sotd_list/awards/submissions/2015/07/55a6c5acf11ee.jpeg", description:"This site is great for design inspiration, they have some truly unique and beautiful websites, my favorite is the one called The Boat! It's an amazing way to tell a story through an interactive site."}
  ])
