module Recurly
  class BillingInfo < RecurlySingularResourceBase
    self.element_name = "billing_info"
    self.prefix = "/accounts/:account_code"
    
    # Create / Update is always a PUT
    def save_without_validation
      update
    end
  end
end