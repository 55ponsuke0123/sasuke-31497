class RelationshipSole < ActiveHash::Base
  self.data = [
    { id: 1, name: '前方' },
    { id: 2, name: '良好' },
    { id: 3, name: '後方' }
  ]

  include ActiveHash::Associations
  has_many :patients
end