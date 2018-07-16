defmodule IntermodalContainers.ContainerNumber.Category do
  alias IntermodalContainers.ContainerNumber

  def category(%ContainerNumber{category_identifier: id}) do
    category(id)
  end

  def category("J") do
    "detachable freight container related equipment"
  end

  def category("R") do
    "reefer (refridgerated) containers"
  end

  def category("U") do
    "freight containers"
  end

  def category("Z") do
    "trailers and chassis"
  end
end
