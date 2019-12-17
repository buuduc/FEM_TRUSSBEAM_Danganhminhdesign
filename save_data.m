function save_data(file)
global point
global elem
global bodem
global show_node
global show_elem
global data
% file=[file,'.mat'];
save(file,'point','elem','bodem','show_node','show_elem','data')