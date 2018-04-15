# frozen_string_literal: true

require './app'

use Rack::UTF8Sanitizer # Forces UTF-8 request processing on systems with ASCII set as default locale
run App
