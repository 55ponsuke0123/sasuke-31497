class Alignment < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '許容' },
    { id: 2, name: '修正要検討' }
  ]

  include ActiveHash::Associations
  has_many :patients
end