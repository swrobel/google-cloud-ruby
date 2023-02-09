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
    module Talent
      module V4beta1
        # The query required to perform a search query.
        # @!attribute [rw] query
        #   @return [::String]
        #     The query string that matches against the job title, description, and
        #     location fields.
        #
        #     The maximum number of allowed characters is 255.
        # @!attribute [rw] query_language_code
        #   @return [::String]
        #     The language code of {::Google::Cloud::Talent::V4beta1::JobQuery#query query}.
        #     For example, "en-US". This field helps to better interpret the query.
        #
        #     If a value isn't specified, the query language code is automatically
        #     detected, which may not be accurate.
        #
        #     Language code should be in BCP-47 format, such as "en-US" or "sr-Latn".
        #     For more information, see
        #     [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        # @!attribute [rw] companies
        #   @return [::Array<::String>]
        #     This filter specifies the company entities to search against.
        #
        #     If a value isn't specified, jobs are searched for against all
        #     companies.
        #
        #     If multiple values are specified, jobs are searched against the
        #     companies specified.
        #
        #     The format is
        #     "projects/\\{project_id}/tenants/\\{tenant_id}/companies/\\{company_id}". For
        #     example, "projects/foo/tenants/bar/companies/baz".
        #
        #     If tenant id is unspecified, the default tenant is used. For
        #     example, "projects/foo/companies/bar".
        #
        #     At most 20 company filters are allowed.
        # @!attribute [rw] location_filters
        #   @return [::Array<::Google::Cloud::Talent::V4beta1::LocationFilter>]
        #     The location filter specifies geo-regions containing the jobs to
        #     search against. See
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter LocationFilter} for more
        #     information.
        #
        #     If a location value isn't specified, jobs fitting the other search
        #     criteria are retrieved regardless of where they're located.
        #
        #     If multiple values are specified, jobs are retrieved from any of the
        #     specified locations. If different values are specified for the
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter#distance_in_miles LocationFilter.distance_in_miles}
        #     parameter, the maximum provided distance is used for all locations.
        #
        #     At most 5 location filters are allowed.
        # @!attribute [rw] job_categories
        #   @return [::Array<::Google::Cloud::Talent::V4beta1::JobCategory>]
        #     The category filter specifies the categories of jobs to search against.
        #     See {::Google::Cloud::Talent::V4beta1::JobCategory JobCategory} for more
        #     information.
        #
        #     If a value isn't specified, jobs from any category are searched against.
        #
        #     If multiple values are specified, jobs from any of the specified
        #     categories are searched against.
        # @!attribute [rw] commute_filter
        #   @return [::Google::Cloud::Talent::V4beta1::CommuteFilter]
        #     Allows filtering jobs by commute time with different travel methods (for
        #      example, driving or public transit).
        #
        #     Note: This only works when you specify a
        #     {::Google::Cloud::Talent::V4beta1::CommuteMethod CommuteMethod}. In this case,
        #     {::Google::Cloud::Talent::V4beta1::JobQuery#location_filters location_filters}
        #     is ignored.
        #
        #      Currently we don't support sorting by commute time.
        # @!attribute [rw] company_display_names
        #   @return [::Array<::String>]
        #     This filter specifies the company
        #     {::Google::Cloud::Talent::V4beta1::Company#display_name Company.display_name} of
        #     the jobs to search against. The company name must match the value exactly.
        #
        #     Alternatively, the value being searched for can be wrapped in different
        #     match operators.
        #     `SUBSTRING_MATCH([value])`
        #     The company name must contain a case insensitive substring match of the
        #     value. Using this function may increase latency.
        #
        #     Sample Value: `SUBSTRING_MATCH(google)`
        #
        #     `MULTI_WORD_TOKEN_MATCH([value])`
        #     The value will be treated as a multi word token and the company name must
        #     contain a case insensitive match of the value. Using this function may
        #     increase latency.
        #
        #     Sample Value: `MULTI_WORD_TOKEN_MATCH(google)`
        #
        #     If a value isn't specified, jobs within the search results are
        #     associated with any company.
        #
        #     If multiple values are specified, jobs within the search results may be
        #     associated with any of the specified companies.
        #
        #     At most 20 company display name filters are allowed.
        # @!attribute [rw] compensation_filter
        #   @return [::Google::Cloud::Talent::V4beta1::CompensationFilter]
        #     This search filter is applied only to
        #     {::Google::Cloud::Talent::V4beta1::Job#compensation_info Job.compensation_info}.
        #     For example, if the filter is specified as "Hourly job with per-hour
        #     compensation > $15", only jobs meeting these criteria are searched. If a
        #     filter isn't defined, all open jobs are searched.
        # @!attribute [rw] custom_attribute_filter
        #   @return [::String]
        #     This filter specifies a structured syntax to match against the
        #     {::Google::Cloud::Talent::V4beta1::Job#custom_attributes Job.custom_attributes}
        #     marked as `filterable`.
        #
        #     The syntax for this expression is a subset of SQL syntax.
        #
        #     Supported operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the
        #     left of the operator is a custom field key and the right of the operator
        #     is a number or a quoted string. You must escape backslash (\\) and
        #     quote (\") characters.
        #
        #     Supported functions are `LOWER([field_name])` to
        #     perform a case insensitive match and `EMPTY([field_name])` to filter on the
        #     existence of a key.
        #
        #     Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
        #     nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of 100
        #     comparisons or functions are allowed in the expression. The expression
        #     must be < 10000 bytes in length.
        #
        #     Sample Query:
        #     `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
        #     driving_years > 10`
        # @!attribute [rw] disable_spell_check
        #   @return [::Boolean]
        #     This flag controls the spell-check feature. If false, the
        #     service attempts to correct a misspelled query,
        #     for example, "enginee" is corrected to "engineer".
        #
        #     Defaults to false: a spell check is performed.
        # @!attribute [rw] employment_types
        #   @return [::Array<::Google::Cloud::Talent::V4beta1::EmploymentType>]
        #     The employment type filter specifies the employment type of jobs to
        #     search against, such as
        #     {::Google::Cloud::Talent::V4beta1::EmploymentType::FULL_TIME EmploymentType.FULL_TIME}.
        #
        #     If a value isn't specified, jobs in the search results includes any
        #     employment type.
        #
        #     If multiple values are specified, jobs in the search results include
        #     any of the specified employment types.
        # @!attribute [rw] language_codes
        #   @return [::Array<::String>]
        #     This filter specifies the locale of jobs to search against,
        #     for example, "en-US".
        #
        #     If a value isn't specified, the search results can contain jobs in any
        #     locale.
        #
        #
        #     Language codes should be in BCP-47 format, such as "en-US" or "sr-Latn".
        #     For more information, see
        #     [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        #
        #     At most 10 language code filters are allowed.
        # @!attribute [rw] publish_time_range
        #   @return [::Google::Cloud::Talent::V4beta1::TimestampRange]
        #     Jobs published within a range specified by this filter are searched
        #     against.
        # @!attribute [rw] excluded_jobs
        #   @return [::Array<::String>]
        #     This filter specifies a list of job names to be excluded during search.
        #
        #     At most 400 excluded job names are allowed.
        class JobQuery
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Geographic region of the search.
        # @!attribute [rw] address
        #   @return [::String]
        #     The address name, such as "Mountain View" or "Bay Area".
        # @!attribute [rw] region_code
        #   @return [::String]
        #     CLDR region code of the country/region. This field may be used in two ways:
        #
        #     1) If telecommute preference is not set, this field is used address
        #     ambiguity of the user-input address. For example, "Liverpool" may refer to
        #     "Liverpool, NY, US" or "Liverpool, UK". This region code biases the
        #     address resolution toward a specific country or territory. If this field is
        #     not set, address resolution is biased toward the United States by default.
        #
        #     2) If telecommute preference is set to TELECOMMUTE_ALLOWED, the
        #     telecommute location filter will be limited to the region specified in this
        #     field. If this field is not set, the telecommute job locations will not be
        #
        #     See
        #     https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/territory_information.html
        #     for details. Example: "CH" for Switzerland.
        # @!attribute [rw] lat_lng
        #   @return [::Google::Type::LatLng]
        #     The latitude and longitude of the geographic center to search from. This
        #     field is ignored if `address` is provided.
        # @!attribute [rw] distance_in_miles
        #   @return [::Float]
        #     The distance_in_miles is applied when the location being searched for is
        #     identified as a city or smaller. This field is ignored if the location
        #     being searched for is a state or larger.
        # @!attribute [rw] telecommute_preference
        #   @return [::Google::Cloud::Talent::V4beta1::LocationFilter::TelecommutePreference]
        #     Allows the client to return jobs without a
        #     set location, specifically, telecommuting jobs (telecommuting is considered
        #     by the service as a special location).
        #     {::Google::Cloud::Talent::V4beta1::Job#posting_region Job.posting_region}
        #     indicates if a job permits telecommuting. If this field is set to
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter::TelecommutePreference::TELECOMMUTE_ALLOWED TelecommutePreference.TELECOMMUTE_ALLOWED},
        #     telecommuting jobs are searched, and
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter#address address} and
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter#lat_lng lat_lng} are ignored.
        #     If not set or set to
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter::TelecommutePreference::TELECOMMUTE_EXCLUDED TelecommutePreference.TELECOMMUTE_EXCLUDED},
        #     the telecommute status of the jobs is ignored. Jobs that have
        #     {::Google::Cloud::Talent::V4beta1::PostingRegion::TELECOMMUTE PostingRegion.TELECOMMUTE}
        #     and have additional
        #     {::Google::Cloud::Talent::V4beta1::Job#addresses Job.addresses} may still be
        #     matched based on other location filters using
        #     {::Google::Cloud::Talent::V4beta1::LocationFilter#address address} or
        #     [latlng][].
        #
        #     This filter can be used by itself to search exclusively for telecommuting
        #     jobs, or it can be combined with another location
        #     filter to search for a combination of job locations,
        #     such as "Mountain View" or "telecommuting" jobs. However, when used in
        #     combination with other location filters, telecommuting jobs can be
        #     treated as less relevant than other jobs in the search response.
        #
        #     This field is only used for job search requests.
        # @!attribute [rw] negated
        #   @return [::Boolean]
        #     Whether to apply negation to the filter so profiles matching the filter
        #     are excluded.
        class LocationFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specify whether to include telecommute jobs.
          module TelecommutePreference

            # Default value if the telecommute preference isn't specified.
            TELECOMMUTE_PREFERENCE_UNSPECIFIED = 0

            # Deprecated: Ignore telecommute status of jobs. Use
            # TELECOMMUTE_JOBS_EXCLUDED if want to exclude telecommute jobs.
            TELECOMMUTE_EXCLUDED = 1

            # Allow telecommute jobs.
            TELECOMMUTE_ALLOWED = 2

            # Exclude telecommute jobs.
            TELECOMMUTE_JOBS_EXCLUDED = 3
          end
        end

        # Filter on job compensation type and amount.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Talent::V4beta1::CompensationFilter::FilterType]
        #     Required. Type of filter.
        # @!attribute [rw] units
        #   @return [::Array<::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationUnit>]
        #     Required. Specify desired `base compensation entry's`
        #     {::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationUnit CompensationInfo.CompensationUnit}.
        # @!attribute [rw] range
        #   @return [::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationRange]
        #     Compensation range.
        # @!attribute [rw] include_jobs_with_unspecified_compensation_range
        #   @return [::Boolean]
        #     If set to true, jobs with unspecified compensation range fields are
        #     included.
        class CompensationFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specify the type of filtering.
          module FilterType

            # Filter type unspecified. Position holder, INVALID, should never be used.
            FILTER_TYPE_UNSPECIFIED = 0

            # Filter by `base compensation entry's` unit. A job is a match if and
            # only if the job contains a base CompensationEntry and the base
            # CompensationEntry's unit matches provided
            # {::Google::Cloud::Talent::V4beta1::CompensationFilter#units units}. Populate
            # one or more
            # {::Google::Cloud::Talent::V4beta1::CompensationFilter#units units}.
            #
            # See
            # {::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationEntry CompensationInfo.CompensationEntry}
            # for definition of base compensation entry.
            UNIT_ONLY = 1

            # Filter by `base compensation entry's` unit and amount / range. A job
            # is a match if and only if the job contains a base CompensationEntry, and
            # the base entry's unit matches provided
            # {::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationUnit CompensationUnit}
            # and amount or range overlaps with provided
            # {::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationRange CompensationRange}.
            #
            # See
            # {::Google::Cloud::Talent::V4beta1::CompensationInfo::CompensationEntry CompensationInfo.CompensationEntry}
            # for definition of base compensation entry.
            #
            # Set exactly one
            # {::Google::Cloud::Talent::V4beta1::CompensationFilter#units units} and
            # populate {::Google::Cloud::Talent::V4beta1::CompensationFilter#range range}.
            UNIT_AND_AMOUNT = 2

            # Filter by annualized base compensation amount and `base compensation
            # entry's` unit. Populate
            # {::Google::Cloud::Talent::V4beta1::CompensationFilter#range range} and zero or
            # more {::Google::Cloud::Talent::V4beta1::CompensationFilter#units units}.
            ANNUALIZED_BASE_AMOUNT = 3

            # Filter by annualized total compensation amount and `base compensation
            # entry's` unit . Populate
            # {::Google::Cloud::Talent::V4beta1::CompensationFilter#range range} and zero or
            # more {::Google::Cloud::Talent::V4beta1::CompensationFilter#units units}.
            ANNUALIZED_TOTAL_AMOUNT = 4
          end
        end

        # Parameters needed for commute search.
        # @!attribute [rw] commute_method
        #   @return [::Google::Cloud::Talent::V4beta1::CommuteMethod]
        #     Required. The method of transportation to calculate the commute time for.
        # @!attribute [rw] start_coordinates
        #   @return [::Google::Type::LatLng]
        #     Required. The latitude and longitude of the location to calculate the
        #     commute time from.
        # @!attribute [rw] travel_duration
        #   @return [::Google::Protobuf::Duration]
        #     Required. The maximum travel time in seconds. The maximum allowed value is
        #     `3600s` (one hour). Format is `123s`.
        # @!attribute [rw] allow_imprecise_addresses
        #   @return [::Boolean]
        #     If `true`, jobs without street level addresses may also be returned.
        #     For city level addresses, the city center is used. For state and coarser
        #     level addresses, text matching is used.
        #     If this field is set to `false` or isn't specified, only jobs that include
        #     street level addresses will be returned by commute search.
        # @!attribute [rw] road_traffic
        #   @return [::Google::Cloud::Talent::V4beta1::CommuteFilter::RoadTraffic]
        #     Specifies the traffic density to use when calculating commute time.
        # @!attribute [rw] departure_time
        #   @return [::Google::Type::TimeOfDay]
        #     The departure time used to calculate traffic impact, represented as
        #     {::Google::Type::TimeOfDay google.type.TimeOfDay} in local time zone.
        #
        #     Currently traffic model is restricted to hour level resolution.
        class CommuteFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The traffic density to use when calculating commute time.
          module RoadTraffic

            # Road traffic situation isn't specified.
            ROAD_TRAFFIC_UNSPECIFIED = 0

            # Optimal commute time without considering any traffic impact.
            TRAFFIC_FREE = 1

            # Commute time calculation takes in account the peak traffic impact.
            BUSY_HOUR = 2
          end
        end
      end
    end
  end
end

