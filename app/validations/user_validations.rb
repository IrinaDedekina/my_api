class UserValidations
  def position_form
    Dry::Validation::Contract.Schema do
      required(:name).filled
      required(:email).filled
    end

    rule(:email) do
      unless /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.match?(value)
        key.failure('has invalid format')
      end
    end
  end
end
