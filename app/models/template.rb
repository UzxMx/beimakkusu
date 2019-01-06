class Template < ApplicationRecord
  self.inheritance_column = nil
  belongs_to :user
  enum type: {normal: 0, with_javascript: 1}
  enum status: {stopped: 0, running: 1, auditing: 2}
end
