# frozen_string_literal: true

module AlexaRubykit
  class DisplayElementRequest < IntentRequest
    def initialize(json_request)
      json_request['request']['intent'] = {
        'name' => 'Display.ElementSelected',
        'slots' => build_slots(json_request)
      }

      super
    end

    def build_slots(json_request)
      {
        'selected' => {
          'name' => 'selected',
          'value' => json_request['request']['token'],
          'confirmationStatus' => 'NONE',
          'source' => 'USER'
        }
      }
    end
  end
end
