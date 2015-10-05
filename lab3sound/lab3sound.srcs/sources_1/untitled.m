
handle3 = fopen('new_test2.coe','w');
for i = 1:220561
   z = y(i);
   if (z >= 0)
       fprintf(handle3, '%04x,\n', z);
   else
       fprintf(handle3, '%04x,\n', 65536 + int32(z));
   end
end

fclose(handle3);