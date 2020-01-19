# basic_data_types
defmodule M do
    def main do
        data_stuff()
    end

    def data_stuff do
    my_int = 123
    IO.puts "Integer #{is_integer(my_int)}"
    
    my_float = 3.14159
    IO.puts "Float #{is_float(my_float)}"
    
    IO.puts "Atom #{is_atom(:Pittsburgh)}"
    
    #Use double quotes ffor spaces
    # :"New York"
    
    # Ranges define a start and end using
    # one_to_10 = 1..10
    end
end