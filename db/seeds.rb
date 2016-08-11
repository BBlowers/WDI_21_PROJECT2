# require_relative '../app/models/project.rb'
# require_relative '../app/models/version.rb'
# require_relative '../app/models/comment.rb'
# require_relative '../app/models/image.rb'
# require_relative '../app/models/user.rb'

# # version = Version.destroy_all
# # comment = Comment.destroy_all
# # user = User.destroy_all
# # project = Project.destroy_all
# # image = Image.destroy_all

["version", "comment", "users", "projects", "images"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create(username: "bsmith", first_name: "bill", last_name: "smith", email: "b@s.com", profile_pic: File.open(File.join(Rails.root, '/db/images/user/profile_pic/1/bananasuit.png')), password: "password", password_confirmation: "password")

user2 = User.create(username: "aatwell", first_name: "andrew", last_name: "atwell", email: "a@a.com", profile_pic: File.open(File.join(Rails.root, '/db/images/user/profile_pic/2/catglasses.jpg')), password: "password", password_confirmation: "password")

user3 = User.create(username: "jleslie", first_name: "jess", last_name: "leslie", email: "j@l.com", profile_pic: File.open(File.join(Rails.root, '/db/images/user/profile_pic/3/emoticons-square-face-with-sunglasses_318-58613.png')), password: "password", password_confirmation: "password")

project1 = Project.create(title: "Pokemon drawings", content: "A collection of pokemon drawings.", current_version_id: 1)
project2 = Project.create(title: "Landscapes", content: "Landscapes drawn.", current_version_id: 3)
project3 = Project.create(title: "Bird drawings", content: "A collection of bird drawings.", current_version_id: 5)
project4 = Project.create(title: "Drawing eyes", content: "A collection of eye drawings.", current_version_id: 7)
project5 = Project.create(title: "Landscape paintings", content: "A collection of landscape paintings.", current_version_id: 9)
project6 = Project.create(title: "Game drawings", content: "A collection of game drawings.", current_version_id: 11)

user1.projects << project1
user1.projects << project2

user2.projects << project3
user2.projects << project4

user3.projects << project5
user3.projects << project6

version1 = Version.create(title: "Pikachu", content: "Drawing pikachu sitting down", main_image_id: 1)
version2 = Version.create(title: "Eevee drawing", content: "Drawing of a Eevee", main_image_id: 3)
version3 = Version.create(title: "Countryside", content: "Drawings of countrysid", main_image_id: 5)
version4 = Version.create(title: "Mountains", content: "Drawings of mountain", main_image_id: 7)
version5 = Version.create(title: "Robin drawings", content: "Drawing and colouring a robin on a branch", main_image_id: 9)
version6 = Version.create(title: "Eagle face drawing", content: "Drawing an eagles face", main_image_id: 11)
version7 = Version.create(title: "Eye drawing with reflection", content: "Drawing an eye with a reflection", main_image_id: 13)
version8 = Version.create(title: "Eye drawing with colour", content: "Drawing eyes with colour", main_image_id: 15)
version9 = Version.create(title: "Lakes", content: "Lakes painted using diffrent techniques", main_image_id: 17)
version10 = Version.create(title: "Arctic", content: "Sea and ice", main_image_id: 19)
version11 = Version.create(title: "Mario", content: "A few drawings of characters from the mario games", main_image_id: 21)
version12 = Version.create(title: "Overwatch", content: "Some drawings of characters from the game Overwatch", main_image_id: 23)

project1.versions << version1
project1.versions << version2

project2.versions << version3
project2.versions << version4

project3.versions << version5
project3.versions << version6

project4.versions << version7
project4.versions << version8

project5.versions << version9
project5.versions << version10

project6.versions << version11
project6.versions << version12

image1 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/coloured_pikachu.jpg')))
image2 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/uncoloured_pikachu.jpg')))
image3 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image3.jpg')))
image4 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image4.jpg')))
image5 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image5.jpg')))
image6 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image6.jpg')))
image7 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image7.jpg')))
image8 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image8.jpg')))
image9 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image9.jpg')))
image10 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image10.jpg')))
image11 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image11.jpg')))
image12 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image12.jpg')))
image13 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image13.jpg')))
image14 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image14.jpg')))
image15 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image15.jpg')))
image16 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image16.jpg')))
image17 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image17.JPG')))
image18 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image18.jpeg')))
image19 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image19.jpg')))
image20 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image20.jpg')))
image21 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image21.jpg')))
image22 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image22.png')))
image23 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image23.jpg')))
image24 = Image.create(image_src: File.open(File.join(Rails.root, '/db/images/version-images/image24.jpg')))

version1.images << image1
version1.images << image2

version2.images << image3
version2.images << image4

version3.images << image5
version3.images << image6

version4.images << image7
version4.images << image8

version5.images << image9
version5.images << image10

version6.images << image11
version6.images << image12

version7.images << image13
version7.images << image14

version8.images << image15
version8.images << image16

version9.images << image17
version9.images << image18

version10.images << image19
version10.images << image20

version11.images << image21
version11.images << image22

version12.images << image23
version12.images << image24

comment1 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment2 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment3 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment4 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment5 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment6 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment7 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment8 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment9 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment10 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment11 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment12 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment13 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment14 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment15 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment16 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment17 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment18 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment19 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment20 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment21 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment22 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment23 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")
comment24 = Comment.create(title: "Well done!", content: "Good job, I really like how you've done it.")

version1.comments << comment1
version1.comments << comment2

version2.comments << comment3
version2.comments << comment4

version3.comments << comment5
version3.comments << comment6

version4.comments << comment7
version4.comments << comment8

version5.comments << comment9
version5.comments << comment10

version6.comments << comment11
version6.comments << comment12

version7.comments << comment13
version7.comments << comment14

version8.comments << comment15
version8.comments << comment16

version9.comments << comment17
version9.comments << comment18

version10.comments << comment19
version10.comments << comment20

version11.comments << comment21
version11.comments << comment22

version12.comments << comment23
version12.comments << comment24


user1.comments << comment1
user2.comments << comment2

user1.comments << comment3
user2.comments << comment4

user1.comments << comment5
user2.comments << comment6

user1.comments << comment7
user2.comments << comment8

user1.comments << comment9
user2.comments << comment10

user1.comments << comment11
user2.comments << comment12

user1.comments << comment13
user2.comments << comment14

user1.comments << comment15
user2.comments << comment16

user1.comments << comment17
user2.comments << comment18

user1.comments << comment19
user2.comments << comment20

user1.comments << comment21
user2.comments << comment22

user1.comments << comment23
user2.comments << comment24