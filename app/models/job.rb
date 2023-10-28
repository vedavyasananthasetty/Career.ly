class Job < ApplicationRecord

  validates :title, presence:true, length: { minimum:5, maximum:100}
  validates :company, presence:true, length: { minimum:5, maximum:100}
  validates :location, presence:true, length: { minimum:5, maximum:100}
  validates :description, presence:true, length: {minimum:10}
end
