require 'csv'

class DataLoader < ActiveRecord::Base

  def self.questions_from_csv(data = './data/questions.csv')
    CSV.open(data, headers: true, header_converters: :symbol).each do |row|
      Question.find_or_create_by({ difficulty: row[:difficulty], id: row[:question_id], standard_id: row[:standard_id]})
    end
  end

  def self.strands_from_csv(data = './data/questions.csv')
    CSV.open(data, headers: true, header_converters: :symbol).each do |row|
      Strand.find_or_create_by({ name: row[:strand_name], id: row[:strand_id] })
    end
  end

  def self.standards_from_csv(data = './data/questions.csv')
    CSV.open(data, headers: true, header_converters: :symbol).each do |row|
      Standard.find_or_create_by({ name: row[:standard_name], id: row[:standard_id], strand_id: row[:strand_id] })
    end
  end

  def self.usages_from_csv(data = './data/usage.csv')
    CSV.open(data, headers: true, header_converters: :symbol).each do |row|
      Usage.create({ student_id: row[:student_id], question_id: row[:question_id], assigned_hours_ago: row[:assigned_hours_ago], answered_hours_ago: row[:answered_hours_ago] })
    end
  end
end
