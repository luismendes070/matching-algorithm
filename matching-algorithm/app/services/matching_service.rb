# app/services/matching_service.rb
class MatchingService
    def self.calculate_matching_score(user1, user2)
      common_interests = user1.interests & user2.interests
      common_interests.size
    end
  end
  