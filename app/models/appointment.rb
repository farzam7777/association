class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  
  validates :doctor, presence: true
  validates :patient, presence: true
  validates :date, presence: true
end
