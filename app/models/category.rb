class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '捨てた' },
    { id: 3, name: '売った' },
    { id: 4, name: '譲った' },
    { id: 5, name: '辞めた' },
    { id: 6, name: '諦めた' },
    { id: 7, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :stuffs
end
