class Balneum2 < ActiveHash::Base
  self.data = [
    { id: 1, name: '自立（5点）' },
    { id: 2, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end