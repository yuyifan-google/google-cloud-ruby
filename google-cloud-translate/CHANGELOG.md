# Release History

### 3.0.0 / 2020-06-10

#### ⚠ BREAKING CHANGES

* **translate:** Convert google-cloud-translate to a wrapper

#### Features

* Convert google-cloud-translate to a wrapper

#### Bug Fixes

* Adjusted some default timeout and retry settings

#### Documentation

* Cover exception changes in the migration guide

### 2.3.0 / 2020-03-28

#### Features

* send quota project header in the V2 client

### 2.2.0 / 2020-03-11

#### Features

* Support separate project setting for quota/billing

### 2.1.2 / 2020-03-02

#### Bug Fixes

* support faraday 1.x

### 2.1.1 / 2020-01-23

#### Documentation

* Update copyright year
* Update Status documentation

### 2.1.0 / 2019-11-06

#### Bug Fixes

* Update minimum runtime dependencies
  * Fixes an issue where required dependencies may not be used.

### 2.0.0 / 2019-10-28

#### ⚠ BREAKING CHANGES

* Add Translate V3 client
  * Update google-cloud-translate to contain a generated v3 client
    as well as the legacy hand-written v2 client.
  * The following methods now return an instance of
    Google::Cloud::Translate::V3::TranslationServiceClient:
    * Google::Cloud#translate
    * Google::Cloud.translate
    * Google::Cloud::Translate.new
  * To use the legacy v2 client specify the version when creating:
    * v2_client = Google::Cloud::Translate.new version: :v2

#### Features

* Add Translate V3 client
  * The v3 client includes several new features and updates:
  * Glossaries - Create a custom dictionary to correctly and
    consistently translate terms that are customer-specific.
  * Batch requests - Make an asynchronous request to translate
    large amounts of text.
  * AutoML models - Cloud Translation adds support for translating
    text with custom models that you create using AutoML Translation.
  * Labels - The Cloud Translation API supports adding user-defined
    labels (key-value pairs) to requests.
* Now requires Ruby 2.4 or later.

#### Documentation

* Update the list of GCP environments for automatic authentication

### 1.4.0 / 2019-10-01

#### Features

* Support overriding of service endpoint

### 1.3.1 / 2019-08-23

#### Documentation

* Update documentation

### 1.3.0 / 2019-02-01

* Make use of Credentials#project_id
  * Use Credentials#project_id
    If a project_id is not provided, use the value on the Credentials object.
    This value was added in googleauth 0.7.0.
  * Loosen googleauth dependency
    Allow for new releases up to 0.10.
    The googleauth devs have committed to maintaining the current API
    and will not make backwards compatible changes before 0.10.

### 1.2.4 / 2018-09-20

* Update documentation.
  * Change documentation URL to googleapis GitHub org.
* Fix circular require warning.

### 1.2.3 / 2018-09-12

* Add missing documentation files to package.

### 1.2.2 / 2018-09-10

* Update documentation.

### 1.2.1 / 2018-08-21

* Update documentation.

### 1.2.0 / 2018-02-27

* Support Shared Configuration.

### 1.1.0 / 2017-11-14

* Add `Google::Cloud::Translate::Credentials` class.
* Rename constructor arguments to `project_id` and `credentials`.
  (The previous arguments `project` and `keyfile` are still supported.)
* Document `Google::Auth::Credentials` as `credentials` value.
* Updated `faraday`, `googleauth` dependencies.

### 1.0.1 / 2017-07-11

* Remove mention of discontinued Premium Edition billing from documentation.

### 1.0.0 / 2017-06-28

* Release 1.0

### 0.23.1 / 2017-05-23

* Fix error handling (adrian-gomez)

### 0.23.0 / 2017-03-31

* No changes

### 0.22.2 / 2016-12-22

* Change product name to Google Cloud Translation API in docs.

### 0.22.1 / 2016-11-16

* Add missing googleauth dependency (frankyn)

### 0.22.0 / 2016-11-14

* Support authentication with service accounts
* Add `model` parameter to translate method
* Add `model` attribute to Translation objects

### 0.21.0 / 2016-10-20

* New service constructor Google::Cloud::Translate.new

### 0.20.1 / 2016-09-02

* Fix for timeout on uploads.

### 0.20.0 / 2016-08-26

This gem contains the Google Cloud Translate service implementation for the `google-cloud` gem. The `google-cloud` gem replaces the old `gcloud` gem. Legacy code can continue to use the `gcloud` gem.

* Namespace is now `Google::Cloud`
* The `google-cloud` gem is now an umbrella package for individual gems
