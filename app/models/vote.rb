class Vote < ActiveRecord::Base
  belongs_to :story

  validates_presence_of :story
  validates_inclusion_of :gender, in: Story::GENDERS
end
