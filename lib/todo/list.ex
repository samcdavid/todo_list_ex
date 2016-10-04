defmodule Todo.List do
  def new, do: HashDict.new

  def add_entry(todo_list, date, title) do
    HashDict.update(
      todo_list,
      date,
      [title],                            # initial value
      fn(titles] -> [title | titles] end  # lamda to update the value
    )
  end

  def entries(todo_list, date) do
    HashDict.get(todo_list, date, [])
  end
end
