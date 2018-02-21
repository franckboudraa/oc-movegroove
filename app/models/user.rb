class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  validates :name, length: { in: 3..30 }
  validates :weight, :inclusion => { :in => 30..200, :message => "The weight must be between 30 and 200kg" }
  validates :height, :inclusion => { :in => 90..240, :message => "The height must be between 90 and 240cm" }
end
