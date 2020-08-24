# Set current_user
current_user = User.first

# Set another user
an_user = User.find_by(id:2)

#################### FEEDS #####################
# Get user name
current_user.firstname + " " + current_user.lastname

# Get photo's title
Photo.first.title

# Get photo's description
Photo.first.description

# Get photo's publication day
Photo.first.created_at

# Get photo's number of likes
# Get album's number of likes

# Get album's title
Album.first.title

# Get album's description
Album.first.description

# Get album's publication day
Album.first.created_at




# Get public photos in reverse chronological order
Photo.where(sharingmode:true).order(created_at: :desc)

# Get public albums in reverse chronological order
Album.where(sharingmode:true).order(created_at: :desc)

# Get users who you are following
current_user.followings

# Get public photos post by users who you are following
Photo.where(user_id:current_user.followings, sharingmode:true)

# Get public albums post by users who you are following
Album.where(user_id:current_user.followers, sharingmode:true)

#################### DISCOVERY #####################

# Get public photo posts from all users
Photo.where(sharingmode:true)

# Get public album posts from all users
Album.where(sharingmode:true)

#################### PUBLIC PROFILE #####################

# Get number of public photos
Photo.where(user_id:an_user, sharingmode:true).size

# Get number of public albums
Album.where(user_id:an_user, sharingmode:true).size

# Get the number of followings
an_user.followings.size

# Get the number of follwers
an_user.followers.size

# Check if current user has followed an user
Follow.where(follower_id:current_user, followed_user_id:an_user).exists?

# Get the number of public photos in an album
Album.first.photos.where(sharingmode:true).size

# Get users who are followed by an user
an_user.followings

# Get users who follow an user
an_user.followers

#################### ADMIN MANAGEMENT #####################

# Get all photos
Photo.all.order(created_at: :desc)

# Get all albums
Album.all.order(created_at: :desc)

# Get all users
User.all