def my_select(collection)
 # your code here!
selection=[]
 i=0
 while i<collection.length
   passes=yield(collection[i])
   selection.push(collection[i]) if passes==true
   i+=1
 end
 selection
end

my_select([1, 2, 3, 4]) do |element|
  element%2==0
end
