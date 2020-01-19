defmodule M do
    def main do
        do_stuff()
    end

    def do_stuff do
        list1 = [1,2,3]
        list2 = [4,5,6]
        
        list3 = list1 ++ list2

        list4 = list3 -- list1

        IO.puts 6 in list4

        [head | tail] = list3
        IO.puts "Head : #{head}"
        
        IO.write "Tail : "
        IO.inspect tail
        # print char
        IO.inspect [97,98]
        # print as list
        IO.inspect [97,98], char_lists: :as_lists

        Enum.each tail, fn item ->
            IO.puts item
        end
    
        words = ["Random", "Words", "in a", "list"]
        Enum.each words, fn word ->
            IO.puts word
        end

        display_list(words)

        # Delete deletes the given item from a list
        IO.puts display_list(List.delete(words,"Random"))
    
        # Delete item at index
        IO.puts display_list(List.delete_at(words,1))
    
        # Insert item at index
        IO.puts display_list(List.insert_at(words,4, "Yeah"))
    
        # Get first item
        IO.puts List.first(words)
    
        # Get last item
        IO.puts List.last(words)

        # You can create lists of key value tuples
        my_stats = [name: "Derek", height: 6.25]
    end

    def display_list([word|words]) do
        IO.puts word
        display_list(words)
    end 
    def display_list([]), do: nil

end
