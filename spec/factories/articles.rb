# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'Article title' }
    text { 'Article text' }

    # создаем фабрику с названием article_with_comments для создания статьи с несколькими комментариями
    factory :article_with_comments do
      transient do
        comments_count { 3 }
      end
      # после создания article
      after :create do |article, evaluator|
        # создаем список из 3-х комментариев
        create_list :comment, evaluator.comments_count, article: article
      end
    end
  end
end
