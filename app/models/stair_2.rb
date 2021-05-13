class Stair2 < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '自立（10点）' },
    { id: 2, name: '要介助・監視（5点）' },
    { id: 3, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end