module AlexaRubykit
  class DisplayelementRequest < IntentRequest
    attr_accessor :intent, :name, :slots

    # We still don't know if all of the parameters in the request are required.
    # Checking for the presence of intent on an IntentRequest.
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

      #than calling intent request constructor
      super

    end

  end
end