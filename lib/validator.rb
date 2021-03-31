module Validator
  PERMITTED_KINDS = [:comedy, :action, :fantasy]
  private_constant :PERMITTED_KINDS

  private

  def validate_kind(kind)
    unless PERMITTED_KINDS.include?(kind)
      raise StandardError, "Kind is not permitted"
    end
  end
end