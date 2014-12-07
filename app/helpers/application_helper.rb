module ApplicationHelper

  def filter_params(filter)

    return_hash = {
      completed: params[:completed],
    }

    return_hash.merge(filter)
  end
end
