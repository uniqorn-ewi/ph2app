class Tweet < ApplicationRecord
  validate :add_errors
    def add_errors
      if content.blank?
        errors[:base] << "つぶやきを入力してください"
      elsif content.gsub(/[\r\n]/, '').length > 140
        errors[:base] << "140文字以内で入力してください"
      end
    end
end
