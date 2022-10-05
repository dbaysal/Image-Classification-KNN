function[correct]=check(min_matrix,value)

    %This function is similar to check_interval funtion but in this
    %function rather than interval there is only value parameter.
    count=0;
    sz=size(min_matrix);
    for i=1:sz(1)
        if min_matrix(i)==value
            count=count+1;
        end
    end
    correct=count;
end