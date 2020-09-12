


import numpy as np

# def select_sorted(array, value,sorter=None):
#     start = np.searchsorted(array,value,side='left',sorter=sorter)
#     end   = np.searchsorted(array,value,side='right',sorter=sorter)
#     return start,end

def search_sorted(array, values, sorter=None):
    start = np.searchsorted(array,values,side='left',sorter=sorter)

    slct_start = start == array.size
    start[slct_start] = 0;
    if(sorter is not None):
        start = sorter[start]
    slct_match = array[start]==values
    start[slct_match==0]=-1
    return start

def binned_func(data_binned_by,bins,data_func,func, *args):
    result = np.zeros(bins.size-1)
    indx = np.digitize(data_binned_by,bins)-1
    for i in range(0,result.size):
        result[i]=func(data_func[indx==i],*args)
    return result
