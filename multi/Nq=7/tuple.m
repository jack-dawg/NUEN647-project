function [ tuple ] = tuple( max_order, uncert_dim_num )

tuple = permn([0:max_order],uncert_dim_num);

if uncert_dim_num <= 1
    
else
    for i = 1:length(tuple)
        if sum(tuple(i,:)) > max_order
            list(i,1) = i;
        end
    end
    newlist = list(list ~= 0);

    tuple(newlist, :) = [];
end
    
end

