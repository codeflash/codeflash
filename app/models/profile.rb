# Contains a user's progress on Codeflash, along with other information about
# him/her that should appear on his/her profile page.
class Profile < ActiveRecord::Base
  before_save :render_about_me
  belongs_to :user
  belongs_to :language
  has_many :solutions
  has_many :achievements, through: :solutions
  has_many :problems
  has_many :comments
  has_and_belongs_to_many :comments_voted,
                          class_name: 'Comment'
  has_and_belongs_to_many :solutions_voted,
                          class_name: 'Solution'
  validates :about_me,
    length: { maximum: 750 }

  # Returns the identifier of the Profile for URLs (the username of its User).
  #
  # @return [String] the Profile's User's username
  def to_param
    user.username
  end

  # Returns the number of points a user has. Points is the sum of votes the
  # user has recieved on solutions and comments as well as their achievements.
  #
  # @return [Integer] the number of points a user has.
  def points
    vote_sums = Proc.new{|sum, x| sum + x.votes}
    solutions.inject(0, &vote_sums) + comments.inject(0, &vote_sums) +
    achievements.inject(0){|sum, x| sum + x.points}
  end

  def voted? solution
    solutions_voted.include? solution
  end

  private

  def render_about_me
    redcarpet = RedcarpetHelper::redcarpet_helper
    self.rendered_about_me = self.about_me.nil? ? self.about_me : redcarpet.render(self.about_me)
  end
end
