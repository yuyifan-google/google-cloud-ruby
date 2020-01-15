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
        # Annotation for identifying spans of text.
        # @!attribute [rw] text_segment
        #   @return [Google::Cloud::AutoML::V1beta1::TextSegment]
        #     An entity annotation will set this, which is the part of the original
        #     text to which the annotation pertains.
        # @!attribute [rw] score
        #   @return [Float]
        #     Output only. A confidence estimate between 0.0 and 1.0. A higher value
        #     means greater confidence in correctness of the annotation.
        class TextExtractionAnnotation; end

        # Model evaluation metrics for text extraction problems.
        # @!attribute [rw] au_prc
        #   @return [Float]
        #     Output only. The Area under precision recall curve metric.
        # @!attribute [rw] confidence_metrics_entries
        #   @return [Array<Google::Cloud::AutoML::V1beta1::TextExtractionEvaluationMetrics::ConfidenceMetricsEntry>]
        #     Output only. Metrics that have confidence thresholds.
        #     Precision-recall curve can be derived from it.
        class TextExtractionEvaluationMetrics
          # Metrics for a single confidence threshold.
          # @!attribute [rw] confidence_threshold
          #   @return [Float]
          #     Output only. The confidence threshold value used to compute the metrics.
          #     Only annotations with score of at least this threshold are considered to
          #     be ones the model would return.
          # @!attribute [rw] recall
          #   @return [Float]
          #     Output only. Recall under the given confidence threshold.
          # @!attribute [rw] precision
          #   @return [Float]
          #     Output only. Precision under the given confidence threshold.
          # @!attribute [rw] f1_score
          #   @return [Float]
          #     Output only. The harmonic mean of recall and precision.
          class ConfidenceMetricsEntry; end
        end
      end
    end
  end
end