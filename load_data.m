function load_data(file)
global point
global elem
global bodem
global show_node
global show_elem
global data


point=[]
elem=[]
bodem=[]
show_node=1
show_elem=1
data=1
% file=[file,'.mat'];
load(file)


