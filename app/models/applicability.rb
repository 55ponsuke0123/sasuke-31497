class Applicability < ActiveHash::Base
  self.data = [
    { id: 1, name: '許容' },
    { id: 2, name: '狭小' }
  ]

  include ActiveHash::Associations
  has_many :patients
end