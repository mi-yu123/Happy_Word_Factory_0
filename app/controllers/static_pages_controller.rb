class StaticPagesController < ApplicationController
  def top; end

  def show
    @random_word = Happy.order("RAND()").first&.text
  end

  def random_word
    @random_word = Happy.order("RAND()").first&.text
    respond_to do |format|
      format.js
    end
  end

  def unhappy
    @unhappy_word = Unhappy.order("RAND()").first&.text
  end

  def random_unhappy_word
    @unhappy_word = Unhappy.order("RAND()").first&.text
    respond_to do |format|
      format.js
    end
  end
end
