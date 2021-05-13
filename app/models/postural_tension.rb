class PosturalTension < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '十分' },
    { id: 2, name: '不十分' }
  ]

  include ActiveHash::Associations
  has_many :patients
end