# == Schema Information
#
# Table name: albums
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Album < ActiveRecord::Base
  attr_accessible :name
  has_many :photos
end
