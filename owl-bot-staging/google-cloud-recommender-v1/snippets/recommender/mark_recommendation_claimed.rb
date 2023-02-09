# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START recommender_v1_generated_Recommender_MarkRecommendationClaimed_sync]
require "google/cloud/recommender/v1"

##
# Snippet for the mark_recommendation_claimed call in the Recommender service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Recommender::V1::Recommender::Client#mark_recommendation_claimed.
# It may require modification in order to execute successfully.
#
def mark_recommendation_claimed
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Recommender::V1::Recommender::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Recommender::V1::MarkRecommendationClaimedRequest.new

  # Call the mark_recommendation_claimed method.
  result = client.mark_recommendation_claimed request

  # The returned object is of type Google::Cloud::Recommender::V1::Recommendation.
  p result
end
# [END recommender_v1_generated_Recommender_MarkRecommendationClaimed_sync]
