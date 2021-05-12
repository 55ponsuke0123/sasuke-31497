class LeftLowerLimbBrunnstrom < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ステージⅠ' },
    { id: 2, name: 'ステージⅡ' },
    { id: 3, name: 'ステージⅢ' },
    { id: 4, name: 'ステージⅣ' },
    { id: 5, name: 'ステージⅤ' },
    { id: 6, name: 'ステージⅥ' }
  ]

  include ActiveHash::Associations
  has_many :patients
end