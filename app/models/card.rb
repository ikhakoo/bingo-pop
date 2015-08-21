class Card < ActiveRecord::Base
	serialize :columns, JSON
end
