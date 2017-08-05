class Tag < ApplicationRecord
  has_many :job_tags
  has_many :jobs, through: :job_tags

  def average_salary
    self.jobs.average(:salary)
  end

  def job_count
    self.jobs.count
  end
end
