# Copyright 2016 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Logging
    module V2
      # Describes a sink used to export log entries outside of Stackdriver Logging.
      # A logs filter controls which log entries are exported.  Sinks can have a
      # start time and an end time; these can be used to place log entries from an
      # exact time range into a particular destination.  If both +start_time+ and
      # +end_time+ are present, then +start_time+ must be less than +end_time+.
      # @!attribute [rw] name
      #   @return [String]
      #     Required. The client-assigned sink identifier, unique within the
      #     project. Example: +"my-syslog-errors-to-pubsub"+.  Sink identifiers are
      #     limited to 100 characters and can include only the following characters:
      #     upper and lower-case alphanumeric characters, underscores, hyphens, and
      #     periods.
      # @!attribute [rw] destination
      #   @return [String]
      #     Required. The export destination:
      #
      #         "storage.googleapis.com/[GCS_BUCKET]"
      #         "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
      #         "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]"
      #
      #     For more information,  see
      #     {Exporting Logs With Sinks}[https://cloud.google.com/logging/docs/api/tasks/exporting-logs].
      # @!attribute [rw] filter
      #   @return [String]
      #     Optional. An {advanced logs filter}[https://cloud.google.com/logging/docs/view/advanced_filters].
      #     Only log entries matching the filter are exported. The filter
      #     must be consistent with the log entry format specified by the
      #     +outputVersionFormat+ parameter, regardless of the format of the
      #     log entry that was originally ingested by Stackdriver Logging.
      #     The following example uses field names in the v2 log entry format:
      #
      #         logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
      # @!attribute [rw] output_version_format
      #   @return [Google::Logging::V2::LogSink::VersionFormat]
      #     Optional. The log entry version to use for this sink's exported log
      #     entries.  This version does not have to correspond to the version of the
      #     log entry that was written to Stackdriver Logging. If omitted, the
      #     v2 format is used.
      # @!attribute [rw] writer_identity
      #   @return [String]
      #     Output only. An IAM identity&mdash;a service account or group&mdash;that
      #     will write exported log entries to the destination on behalf of Stackdriver
      #     Logging. You must grant this identity write-access to the destination.
      #     Consult the destination service's documentation to determine the exact role
      #     that must be granted.
      # @!attribute [rw] start_time
      #   @return [Google::Protobuf::Timestamp]
      #     Optional. The time at which this sink will begin exporting log entries.  If
      #     this value is present, then log entries are exported only if +start_time+
      #     <=+entry.timestamp+.
      # @!attribute [rw] end_time
      #   @return [Google::Protobuf::Timestamp]
      #     Optional. Time at which this sink will stop exporting log entries.  If this
      #     value is present, then log entries are exported only if +entry.timestamp+ <
      #     +end_time+.
      class LogSink
        # Available log entry formats. Log entries can be written to Stackdriver
        # Logging in either format and can be exported in either format.
        # Version 2 is the preferred format.
        module VersionFormat
          # An unspecified version format will default to V2.
          VERSION_FORMAT_UNSPECIFIED = 0

          # +LogEntry+ version 2 format.
          V2 = 1

          # +LogEntry+ version 1 format.
          V1 = 2
        end
      end

      # The parameters to +ListSinks+.
      # @!attribute [rw] parent
      #   @return [String]
      #     Required. The resource name where this sink was created:
      #
      #         "projects/[PROJECT_ID]"
      #         "organizations/[ORGANIZATION_ID]"
      # @!attribute [rw] page_token
      #   @return [String]
      #     Optional. If present, then retrieve the next batch of results from the
      #     preceding call to this method.  +pageToken+ must be the value of
      #     +nextPageToken+ from the previous response.  The values of other method
      #     parameters should be identical to those in the previous call.
      # @!attribute [rw] page_size
      #   @return [Integer]
      #     Optional. The maximum number of results to return from this request.
      #     Non-positive values are ignored.  The presence of +nextPageToken+ in the
      #     response indicates that more results might be available.
      class ListSinksRequest; end

      # Result returned from +ListSinks+.
      # @!attribute [rw] sinks
      #   @return [Array<Google::Logging::V2::LogSink>]
      #     A list of sinks.
      # @!attribute [rw] next_page_token
      #   @return [String]
      #     If there might be more results than appear in this response, then
      #     +nextPageToken+ is included.  To get the next set of results, call the same
      #     method again using the value of +nextPageToken+ as +pageToken+.
      class ListSinksResponse; end

      # The parameters to +GetSink+.
      # @!attribute [rw] sink_name
      #   @return [String]
      #     Required. The resource name of the sink to return:
      #
      #         "projects/[PROJECT_ID]/sinks/[SINK_ID]"
      #         "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
      class GetSinkRequest; end

      # The parameters to +CreateSink+.
      # @!attribute [rw] parent
      #   @return [String]
      #     Required. The resource in which to create the sink:
      #
      #         "projects/[PROJECT_ID]"
      #         "organizations/[ORGANIZATION_ID]"
      # @!attribute [rw] sink
      #   @return [Google::Logging::V2::LogSink]
      #     Required. The new sink, whose +name+ parameter is a sink identifier that
      #     is not already in use.
      # @!attribute [rw] unique_writer_identity
      #   @return [true, false]
      #     Optional. Whether the sink will have a dedicated service account returned
      #     in the sink's writer_identity. Set this field to be true to export
      #     logs from one project to a different project. This field is ignored for
      #     non-project sinks (e.g. organization sinks) because those sinks are
      #     required to have dedicated service accounts.
      class CreateSinkRequest; end

      # The parameters to +UpdateSink+.
      # @!attribute [rw] sink_name
      #   @return [String]
      #     Required. The resource name of the sink to update, including the parent
      #     resource and the sink identifier:
      #
      #         "projects/[PROJECT_ID]/sinks/[SINK_ID]"
      #         "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
      #
      #     Example: +"projects/my-project-id/sinks/my-sink-id"+.
      # @!attribute [rw] sink
      #   @return [Google::Logging::V2::LogSink]
      #     Required. The updated sink, whose name is the same identifier that appears
      #     as part of +sinkName+.  If +sinkName+ does not exist, then
      #     this method creates a new sink.
      # @!attribute [rw] unique_writer_identity
      #   @return [true, false]
      #     Optional. Whether the sink will have a dedicated service account returned
      #     in the sink's writer_identity. Set this field to be true to export
      #     logs from one project to a different project. This field is ignored for
      #     non-project sinks (e.g. organization sinks) because those sinks are
      #     required to have dedicated service accounts.
      class UpdateSinkRequest; end

      # The parameters to +DeleteSink+.
      # @!attribute [rw] sink_name
      #   @return [String]
      #     Required. The resource name of the sink to delete, including the parent
      #     resource and the sink identifier:
      #
      #         "projects/[PROJECT_ID]/sinks/[SINK_ID]"
      #         "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
      #
      #     It is an error if the sink does not exist.
      class DeleteSinkRequest; end
    end
  end
end