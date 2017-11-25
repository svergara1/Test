class User < ApplicationRecord

  #post de ususarios en los muros
  #reviews de listas de reproduccion y noticias
  # comentarios 
  # listas de reproduccion
  # lista de favoritos
  # visitante

  #has_many :playlists, through: :playlist_songs
  #has_many :songs, through: :playlist_songs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # Revisado correctamente
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following
  has_many :playlists
  

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end


end
