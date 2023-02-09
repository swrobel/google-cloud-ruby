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


module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        # Request message for Predict method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of the format:
        #     `{name=projects/*/locations/global/catalogs/default_catalog/eventStores/default_event_store/placements/*}`
        #     The id of the recommendation engine placement. This id is used to identify
        #     the set of models that will be used to make the prediction.
        #
        #     We currently support three placements with the following IDs by default:
        #
        #     * `shopping_cart`: Predicts items frequently bought together with one or
        #       more catalog items in the same shopping session. Commonly displayed after
        #       `add-to-cart` events, on product detail pages, or on the shopping cart
        #       page.
        #
        #     * `home_page`: Predicts the next product that a user will most likely
        #       engage with or purchase based on the shopping or viewing history of the
        #       specified `userId` or `visitorId`. For example - Recommendations for you.
        #
        #     * `product_detail`: Predicts the next product that a user will most likely
        #       engage with or purchase. The prediction is based on the shopping or
        #       viewing history of the specified `userId` or `visitorId` and its
        #       relevance to a specified `CatalogItem`. Typically used on product detail
        #       pages. For example - More items like this.
        #
        #     * `recently_viewed_default`: Returns up to 75 items recently viewed by the
        #       specified `userId` or `visitorId`, most recent ones first. Returns
        #       nothing if neither of them has viewed any items yet. For example -
        #       Recently viewed.
        #
        #     The full list of available placements can be seen at
        #     https://console.cloud.google.com/recommendation/datafeeds/default_catalog/dashboard
        # @!attribute [rw] user_event
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::UserEvent]
        #     Required. Context about the user, what they are looking at and what action
        #     they took to trigger the predict request. Note that this user event detail
        #     won't be ingested to userEvent logs. Thus, a separate userEvent write
        #     request is required for event logging.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of results to return per page. Set this property
        #     to the number of prediction results required. If zero, the service will
        #     choose a reasonable default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The previous PredictResponse.next_page_token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter for restricting prediction results. Accepts values for
        #     tags and the `filterOutOfStockItems` flag.
        #
        #      * Tag expressions. Restricts predictions to items that match all of the
        #        specified tags. Boolean operators `OR` and `NOT` are supported if the
        #        expression is enclosed in parentheses, and must be separated from the
        #        tag values by a space. `-"tagA"` is also supported and is equivalent to
        #        `NOT "tagA"`. Tag values must be double quoted UTF-8 encoded strings
        #        with a size limit of 1 KiB.
        #
        #      * filterOutOfStockItems. Restricts predictions to items that do not have a
        #        stockState value of OUT_OF_STOCK.
        #
        #     Examples:
        #
        #      * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional")
        #      * filterOutOfStockItems  tag=(-"promotional")
        #      * filterOutOfStockItems
        # @!attribute [rw] dry_run
        #   @return [::Boolean]
        #     Optional. Use dryRun mode for this prediction query. If set to true, a
        #     dummy model will be used that returns arbitrary catalog items.
        #     Note that the dryRun mode should only be used for testing the API, or if
        #     the model is not ready.
        # @!attribute [rw] params
        #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
        #     Optional. Additional domain specific parameters for the predictions.
        #
        #     Allowed values:
        #
        #     * `returnCatalogItem`: Boolean. If set to true, the associated catalogItem
        #        object will be returned in the
        #       `PredictResponse.PredictionResult.itemMetadata` object in the method
        #        response.
        #     * `returnItemScore`: Boolean. If set to true, the prediction 'score'
        #        corresponding to each returned item will be set in the `metadata`
        #        field in the prediction response. The given 'score' indicates the
        #        probability of an item being clicked/purchased given the user's context
        #        and history.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels for the predict request.
        #
        #      * Label keys can contain lowercase letters, digits and hyphens, must start
        #        with a letter, and must end with a letter or digit.
        #      * Non-zero label values can contain lowercase letters, digits and hyphens,
        #        must start with a letter, and must end with a letter or digit.
        #      * No more than 64 labels can be associated with a given request.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        class PredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          class ParamsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for predict method.
        # @!attribute [rw] results
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::PredictResponse::PredictionResult>]
        #     A list of recommended items. The order represents the ranking (from the
        #     most relevant item to the least).
        # @!attribute [rw] recommendation_token
        #   @return [::String]
        #     A unique recommendation token. This should be included in the user event
        #     logs resulting from this recommendation, which enables accurate attribution
        #     of recommendation model performance.
        # @!attribute [rw] items_missing_in_catalog
        #   @return [::Array<::String>]
        #     IDs of items in the request that were missing from the catalog.
        # @!attribute [rw] dry_run
        #   @return [::Boolean]
        #     True if the dryRun property was set in the request.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
        #     Additional domain specific prediction response metadata.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If empty, the list is complete. If nonempty, the token to pass to the next
        #     request's PredictRequest.page_token.
        class PredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # PredictionResult represents the recommendation prediction results.
          # @!attribute [rw] id
          #   @return [::String]
          #     ID of the recommended catalog item
          # @!attribute [rw] item_metadata
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
          #     Additional item metadata / annotations.
          #
          #     Possible values:
          #
          #     * `catalogItem`: JSON representation of the catalogItem. Will be set if
          #       `returnCatalogItem` is set to true in `PredictRequest.params`.
          #     * `score`: Prediction score in double value. Will be set if
          #       `returnItemScore` is set to true in `PredictRequest.params`.
          class PredictionResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::Value]
            class ItemMetadataEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

