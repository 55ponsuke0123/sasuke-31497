class JointCapsule < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '関節アライメント' },
    { id: 2, name: '副運動' },
    { id: 3, name: '協調性' },
    { id: 4, name: '関節包・靭帯' },
    { id: 5, name: '構造的要因' }
  ]

  include ActiveHash::Associations
  has_many :patients
end