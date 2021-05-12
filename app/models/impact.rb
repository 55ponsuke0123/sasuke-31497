class Impact < ActiveHash::Base
  self.data = [
    { id: 1, name: 'あり' },
    { id: 2, name: 'なし' }
  ]

  include ActiveHash::Associations
  has_many :patients
end