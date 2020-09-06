# Set current_user
current_user = User.first

# Set another user
an_user = User.find_by(id:2)

#################### FEEDS #####################
#Get users that current_user is following
u=current_user.followings
u.each do |following|
# u=current_user.followings.first.id

# i_id=following.id
  i_firstname=following.firstname
  i_lastname=following.lastname
#  i_ava=following.avatarurl

# u=current_user.followings.first.photos.last.title

# Get latest public photo
  p=following.photos.where(sharingmode:true).order(created_at: :desc).first
  ##############################################################################################################################
  # User.first.followings.map { |user| user.photos.all.where(sharingmode:true).order(created_at: :desc)  }.flatten!.each do |i|#
  #   puts i.title                                                                                                             #
  # end                                                                                                                        #
  ##############################################################################################################################
# p_id=p.id
# Get Photo Author
  p_author=p.user.lastname + " " + p.user.firstname
  p_title=p.title
  p_description=p.description
  p_time=p.created_at
  p_ycount= p.likes.count
  p_url= p.photourl
# Get latest public album
  a=following.albums.where(sharingmode:true).order(created_at: :desc).first
# a_id=a.id
  a_author=a.user.lastname + " " + a.user.firstname
  a_title=a.title
  a_description=a.description
  a_time=a.created_at
  a_ycount= a.likes
  a_url= a.albumurl
end

# Get public photos post by users who you are following
Photo.where(user_id:current_user.followings, sharingmode:true)

# Get public albums post by users who you are following
Album.where(user_id:current_user.followers, sharingmode:true)
#################### MODAL #####################
  m=User.find_by(id:2)
  #query image
  m=m.photos.find_by(id:3)
  m_title=m.title
  m_url=m.photourl
  m_description=m.description
#################### DISCOVERY #####################
#Get all users
u=User.all
u.each do |following|
# u=current_user.followings.first.id

# i_id=following.id
  i_firstname=following.firstname
  i_lastname=following.lastname
#  i_ava=following.avatarurl

# u=current_user.followings.first.photos.last.title

# Get latest public photo
  p=following.photos.where(sharingmode:true).order(created_at: :desc).first
# p_id=p.id
# Get Photo Author
  p_author=p.user.lastname + " " + p.user.firstname
  p_title=p.title
  p_description=p.description
  p_time=p.created_at
  p_ycount= p.likes.count
  p_url= p.photourl
# Get latest public album
  a=following.albums.where(sharingmode:true).order(created_at: :desc).first
# a_id=a.id
  a_author=a.user.lastname + " " + a.user.firstname
  a_title=a.title
  a_description=a.description
  a_time=a.created_at
  a_ycount= a.likes
  a_url= a.albumurl
end
# Check if current user has followed an user or not
  fl_check=Follow.where(follower_id:current_user, followed_user_id:an_user).exists?

# Get public photo posts from all users
Photo.where(sharingmode:true)

# Get public album posts from all users
Album.where(sharingmode:true)

#################### PROFILE #####################
u = current_user
u.firstname
u.lastname
u.avatarurl
u.photos.count
u.albums.count
u.followings.count
u.followers.count

un=User.all
un.each do |u|
# un=current_user.followings.first.id
# i_id=following.id
  i_firstname=u.firstname
  i_lastname=u.lastname
  i_ava=u.avatarurl
  i_photo_count=u.photos.count
  i_album_count=u.albums.count

end

# Get number of public photos
p_count=Photo.where(user_id:an_user, sharingmode:true).count

# Get number of public albums
a_count=Album.where(user_id:an_user, sharingmode:true).count

# Get the number of followings
fl=current_user.followings.count

# Get the number of follwers
fr=current_user.followers.count

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
