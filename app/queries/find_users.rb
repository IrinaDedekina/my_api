class FindUsers
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params)
    scoped = filter_by_id(scoped, params[:user_id])
  end

  private
  def filter_by_id(scoped, user_id = nil)
    user_id ? scoped.where(user_id: user_id) : scoped
  end
end