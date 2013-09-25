class MobilizationsController < InheritedResources::Base
  def show
    @facts = resource.facts.order("created_at DESC")
    @comments = resource.comments.order("published_at DESC").limit(5)
    show!
  end
end
