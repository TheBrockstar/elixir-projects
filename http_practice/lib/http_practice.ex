defmodule HttpPractice do
  @moduledoc """
  Documentation for HttpPractice.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HttpPractice.hello()
      :world

  """
  def pullRequest do
    case :httpc.request('https://en.wikipedia.org/wiki/Koala') do
      {:ok, response} -> 
        {_status, _headers, body} = response
        Floki.parse(body)
      {:error, _reason} -> "The request failed."
    end
  end

  def getImages do
    Floki.find(pullRequest(), "img")
  end
end
