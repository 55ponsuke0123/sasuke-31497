class SoftTissue < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '伸張性' },
    { id: 2, name: '筋緊張' },
    { id: 3, name: '可動性' },
    { id: 4, name: '短縮' },
    { id: 5, name: '癒着' },
    { id: 6, name: '拘縮' }
  ]

  include ActiveHash::Associations
  has_many :patients
end