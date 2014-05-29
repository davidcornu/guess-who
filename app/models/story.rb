class Story < ActiveRecord::Base
  has_many :votes

  GENDERS = ['male', 'female']

  validates_presence_of :body, :age, :gender
  validates_inclusion_of :gender, in: GENDERS
  validates_numericality_of :age, greater_than: 0

  def vote_counts
    tally = votes.count(:all, group: :gender)
    GENDERS.each do |gender|
      tally[gender] = 0 unless tally.has_key?(gender)
    end
    tally
  end
end
