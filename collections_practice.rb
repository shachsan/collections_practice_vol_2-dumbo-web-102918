def begins_with_r(arr)
  arr.all? {|ele|ele.start_with?('r')|| ele.start_with?('R')}
end


def contain_a(arr)
  arr.select {|ele|ele.include?('a')}
end

def first_wa(arr)
  arr.find {|ele|ele.is_a?(String) && ele.start_with?('wa')}
end

def remove_non_strings(arr)
  arr.reject {|ele|!ele.is_a?(String)}
end

def count_elements(arr)
  count_ele = []
  names = arr.map {|h|h[:name]}.uniq
  names.each do |n|
    counter=0
    arr.each do |hash|
      if n == hash[:name]
        counter+=1
      end
    end
    count_ele << {:name=>n, :count => counter}
  end
  count_ele
end


def merge_data(arr1, arr2)
  merge = []
  persons = arr1.map {|h|h[:first_name]}
  persons.each do |name|
    arr2.each do |data_hash|
      data_hash.each do |k, v|
        if name == k
           v[:first_name] = name
          merge << v
        end
      end
    end
  end
   merge
end

def find_cool(arr_h)
  arr_h.select {|h|h[:temperature]=='cool'}
end


def organize_schools(hash)
  
  organized = Hash.new

  locations = hash.map {|k, v|v[:location]}

  locations.uniq.each do |loc|
    schools=[]
    hash.each do |school, city|
      if loc == city[:location]
        schools << school
      end
    end

     organized[loc]= schools

  end

    organized
end

#
# schs = {
#   "flatiron school bk" => {
#     :location => "NYC"
#   },
#   "flatiron school" => {
#     :location => "NYC"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago"
#   },
#   "general assembly" => {
#     :location => "NYC"
#   },
#   "Hack Reactor" => {
#     :location => "SF"
#   }
# }
# organize_schools(schs)
