class Shape1 < ActiveHash::Base
  self.data = [
    { id: 1, name: '全介助（1点）' },
    { id: 2, name: '最大介助（２点）' },
    { id: 3, name: '重度介助（３点）' },
    { id: 4, name: '中等度介助（４点）' },
    { id: 5, name: '軽度介助（５点）' },
    { id: 6, name: '修正自立（６点）' },
    { id: 7, name: '自立（７点）' }
  ]
  
  include ActiveHash::Associations
  has_many :patients
end