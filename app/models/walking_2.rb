class Walking2 < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '自立（15点）' },
    { id: 2, name: '介助・監視下での45m平地歩行可能（10点）' },
    { id: 3, name: '車椅子にて45m移動可能（5点）' },
    { id: 4, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end