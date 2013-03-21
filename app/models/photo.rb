class Photo < ActiveRecord::Base
  attr_accessible :name, :url, :remote_url_url
  belongs_to :album
  mount_uploader :url, PicUploader
end