class Urination2 < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '失禁なし（10点）' },
    { id: 2, name: '時に失禁あり（5点）' },
    { id: 3, name: '全介助（0点）' }
  ]

  include ActiveHash::Associations
  has_many :patients
end