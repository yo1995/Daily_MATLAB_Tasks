function return_str = coord_to_date_str(start_date, x, y)
if (x > 7 || y > 52)
    disp('Overflow date in diagram!');
    return_str = '';
    return;
end

d = datenum(start_date);
d = d + (y - 2) * 7 + (7 - x);  % weeks and days
disp(datestr(d))
return_str = ['date ', datestr(d, 'mmddHHMMyyyy.SS')];
return;
