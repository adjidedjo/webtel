class Employee < ApplicationRecord
    belongs_to :department

    validates :name, :department_id, :ext, presence: true
end
