# Merge sort

MAX_VALUE = 9999

seeds = [3, 23, 12 ,2, 4, 33, 10, 44, 33, 45, 12, 67, 24, 5, 9, 33, 1, 89]

def merge(a, p, q, e)
  puts "middle result: " + a.to_s + " p: " + p.to_s + " q: " + q.to_s + " e: " + e.to_s
  n1 = q - p + 1
  n2 = e - q
  l = a[p..q]
  l[n1] = MAX_VALUE
  r = a[(q + 1)..e]
  r[n2] = MAX_VALUE
  i = j = 0
  k = p
  while (k <= e)
    if l[i] <= r[j]
      a[k] = l[i]
      i = i + 1
    else
      a[k] = r[j]
      j = j + 1
    end
    k = k + 1
  end  
  puts "Result:" + a.to_s
end

def merge_sort(a, p, r)
  if p < r
    q = (p + r) / 2
    merge_sort(a, p, q)
    merge_sort(a, q + 1, r)
    merge(a, p, q, r)
  end
end

merge_sort(seeds, 0, seeds.length - 1)
