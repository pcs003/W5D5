class Response < ApplicationRecord

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_id,
        class_name: :AnswerChoice

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :responder_id,
        class_name: :User
end