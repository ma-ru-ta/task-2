class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  validates :user_id, uniqueness: {scope: :book_id}
  # バリデーションを使って、user_idとbook_idのペアが一意である（重複しない）状態に制限。
  # （同じ人が同じ投稿に何度もいいねをできないように。）
end
