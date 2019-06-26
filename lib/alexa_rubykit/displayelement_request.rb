module AlexaRubykit
  class DisplayelementRequest < IntentRequest
    attr_accessor :intent, :name, :slots

    def initialize(json_request)
      json_request['request']['intent'] = {
        'name' => "Display.ElementSelected",
        'slots' => {
          'selected' => {
            'name' => 'selected',
            'value' => json_request['request']['token'],
            "confirmationStatus" => "NONE",
            "source" => "USER"
          }
        }
      }

      super
    end
  end
end
