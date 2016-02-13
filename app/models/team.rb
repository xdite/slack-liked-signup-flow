class Team < ActiveRecord::Base

  has_many :team_users
  has_many :users, :through => :team_users, :source => :user

  validates :name, presence: true
  validates :domain, presence: true
end

# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  domain     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
