# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  term_offered  :string
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#
class Course < ApplicationRecord
  has_many :enrollments
  belongs_to :department
end

class Department < ApplicationRecord
  # Course.where({ :department_id => self.id })
  has_many :courses, class_name: 'Course', foreign_key: 'department_id'
end
