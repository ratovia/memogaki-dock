class Form::MemoCollection < Form::Base
  FORM_COUNT = 1
  attr_accessor :memos

  def initialize(attributes = {})
    super attributes
    self.memos = FORM_COUNT.times.map { Memo.new() } unless self.memos.present?
  end
  
  def memos_attributes=(attributes)
    self.memos = attributes.map { |_, v| Memo.new(v) }
  end

  def save
    Memo.transaction do
      self.memos.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end