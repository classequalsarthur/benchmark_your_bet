class Question < ActiveRecord::Base
    
    has_many :options, :dependent => :destroy
    has_many :answers, :dependent => :destroy
    has_many :users, through: :answers, :dependent => :destroy
    
    # make sure there is something in the field before submitting
    validates :question_text, presence: true
end
