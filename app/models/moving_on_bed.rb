class MovingOnBed < ActiveHash::Base

  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '自立' },
    { id: 2, name: '見守り' },
    { id: 3, name: '軽度介助' },
    { id: 4, name: '中等度介助' },
    { id: 5, name: '重度介助' },
    { id: 6, name: '全介助' }
  ]

  include ActiveHash::Associations
  has_many :patients
end