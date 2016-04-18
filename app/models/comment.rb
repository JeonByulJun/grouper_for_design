class Comment < ActiveRecord::Base
    belongs_to :tasks
end
