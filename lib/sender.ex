defmodule Sender do
  @moduledoc """
  Documentation for `Sender`.
  """

  @doc """
  Calling this function will pause execution for three seconds and print a message, which will be useful to debugging. It also returns a tuple {:ok, "email_sent"} to indicate that the email was sucessfully sent.

  ## Example

      iex> Sender.send_email("hello@world.com")
      {:ok, "email_sent"}
  """
  def send_email(email) do
    Process.sleep(3000)
    IO.puts("Email to #{email} sent")
    {:ok, "email_sent"}
  end

  @doc """
  The `notify_all/1` function uses `Enum.each/2` to iterate over the variable `emails`, which is a list of strings. For each item in the list, we are going to call the `send_email/1` function.

  ## Example

      iex> emails = [
      ...>   "hello@world.com",
      ...>   "hola@world.com",
      ...>   "nihao@world.com",
      ...>   "konnichiwa@world.com"
      ...> ]
      iex> Sender.notify_all(emails)
      :ok
  """
  def notify_all(emails) do
    Enum.each(emails, &send_email/1)
  end
end
