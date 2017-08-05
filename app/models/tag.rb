class Tag < ApplicationRecord
  has_many :job_tags
  has_many :jobs, through: :job_tags

  def average_salary
    self.jobs.reduce(0){|sum, job| sum + job.salary} / self.jobs.count
  end

end
