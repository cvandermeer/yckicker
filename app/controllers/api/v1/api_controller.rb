module Api
  module V1
    class ApiController < ActionController::API
      include ActionController::Serialization
      after_action  :cors_set_access_control_headers

      def cors_preflight_check
        render body: nil, status: 204
      end

      protected

      def cors_set_access_control_headers
        if request.headers.env.key?('HTTP_ORIGIN')
          headers['Access-Control-Allow-Origin'] = '*'
          headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, X-Access-Token'
          headers['Access-Control-Max-Age'] = '1728000'
        end
      end
    end
  end
end
