# MemoGenerator

### An Elixir application to generate a memo by scraping your team's trello boards.

![Sample Memo](sample.png "Sample Memo")

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `memo_generator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:memo_generator, "~> 0.1.0"}
  ]
end
```

## Configuration

```elixir
# Used to Authenticate your bot into the Trello workspace
config :memo_generator, api_key: ""
config :memo_generator, api_token: ""

# Provide the link to a logo of your company
config :memo_generator, logo: ""

# Add a splash or signature (simmilar to the one below) to be added underneath the title
config :memo_generator, splash: ""
```

## Usage

#### Use the function within your elixir application...
```Elixir
  @doc """
  Function to generate memo for all boards on a trello workspace
  """
  def go(filename, title) do
    |> scrape_webpage
    ...
    |> render_document
  end
```

#### Or you can use it through iex
```console
iex(1)> MemoGenerator.go("eCommerce-memo.md", "Weekly Memo - eCommerce")

16:04:44.355 [info]  Rendered all cards for list: Backlog
 
16:04:44.430 [info]  Rendered all cards for list: Focused
 
16:04:44.502 [info]  Rendered all cards for list: Doing
 
16:04:44.586 [info]  Rendered all cards for list: Done
 
16:04:44.587 [info]  Rendered all cards and lists for board: Main
 
16:04:44.745 [info]  Rendered all cards for list: Backlog
 
16:04:44.820 [info]  Rendered all cards for list: Focused
 
16:04:44.897 [info]  Rendered all cards for list: Doing
 
16:04:44.974 [info]  Rendered all cards for list: Done
 
16:04:44.974 [info]  Rendered all cards and lists for board: Secret Project

16:04:44.974 [info]  Finished rendering: Weekly Memo - eCommerce, into file: eCommerce-memo.md

:ok
```

<p>Created with &#x2665; by Azohra.<p>
