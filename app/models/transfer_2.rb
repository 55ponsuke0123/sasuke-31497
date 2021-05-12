class Transfer2 < ActiveHash::Base
  self.data = [
    { id: 1, name: '自立（15点）' },
    { id: 2, name: '軽度介助〜監視（10点）' },
    { id: 3, name: '介助（5点）' },
    { id: 4, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end