# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Department < ApplicationRecord
  # Course.where({ :department_id => self.id })
  has_many :courses, class_name: 'Course', foreign_key: 'department_id'
end
