defmodule IntermodalContainers.ContainerNumber.Category do
  alias IntermodalContainers.ContainerNumber

  def category(%ContainerNumber{category_identifier: id}) do
    category(id)
  end

  defp category("J") do
    "detachable freight container related equipment"
  end

  defp category("R") do
    "reefer (refridgerated) containers"
  end

  defp category("U") do
    "freight containers"
  end

  defp category("Z") do
    "trailers and chassis"
  end
end
