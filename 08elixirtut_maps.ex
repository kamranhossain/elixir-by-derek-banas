defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        capitals = %{"Albama" => "Montgomery",
            "Alaska" => "Juneau", "Arizona" => "Phoenix"}
        
        IO.puts "Capitals of Alaska is #{capitals["Alaska"]}"

        capitals2 = %{albama: "Montgomery",
            alaska: "Juneau", arizona: "Phoenix"}

        IO.puts "Capitals of Arizona is #{capitals2.arizona}"

        capitals3 = Dict.put_new(capitals, "Arkanas", "Little Rock")
    end

    def display_list([word|words]) do
        IO.puts word
        display_list(words)
    end 
    def display_list([]), do: nil

end
