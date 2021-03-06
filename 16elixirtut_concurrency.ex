defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        spawn(fn() -> loop(50, 1) end)
        spawn(fn() -> loop(100, 50) end)
        send(self(), {:french, "Bob"})

        receive do
            
            {:german, name} -> IO.puts "Guten tag #{name}"
            {:french, name} -> IO.puts "Bonjour #{name}"
            {:english, name} -> IO.puts "Hello #{name}"
        end
        
    end
    
    def loop(0,_), do: nil
    
    def loop(max, min) do
        if max < min do
            loop(0, min)
        else
            IO.puts "Num : #{max}"
            loop(max - 1, min)
        end
    end
    
end
