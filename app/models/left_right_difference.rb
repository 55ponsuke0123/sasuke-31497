class LeftRightDifference < ActiveHash::Base
  self.data = [
    { id: 1, name: '左偏位' },
    { id: 2, name: '良好' },
    { id: 3, name: '右偏位' }
  ]

  include ActiveHash::Associations
  has_many :patients
end