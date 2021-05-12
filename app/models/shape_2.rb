class Shape2 < ActiveHash::Base
  self.data = [
    { id: 1, name: '自立（5点）' },
    { id: 2, name: '部分介助もしくは不可（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end