# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module AutoML
      module V1beta1
        # A time period inside of an example that has a time dimension (e.g. video).
        # @!attribute [rw] start_time_offset
        #   @return [Google::Protobuf::Duration]
        #     Start of the time segment (inclusive), represented as the duration since
        #     the example start.
        # @!attribute [rw] end_time_offset
        #   @return [Google::Protobuf::Duration]
        #     End of the time segment (exclusive), represented as the duration since the
        #     example start.
        class TimeSegment; end
      end
    end
  end
end