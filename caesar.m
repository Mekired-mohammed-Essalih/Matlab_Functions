function output = caesar(vector, shift)
   
   shift = shift - 95 * fix(shift/95);

   
   code = double(vector);
   secret = code;
   disp(code);
   
   
   a = size(vector, 2);

   for i = 1:a
       

       if code(i) + shift < 32 
           secret(i) = 126 - 31 + code(i) + shift;

       

       elseif code(i) + shift > 126
           secret(i) = 32 + code(i) + shift - 127;

       

       elseif code(i)==122
           code(i)=96;
           secret(i) = code(i) + shift;
       else
           secret(i) = code(i) + shift;
       end
   end
   
   output = char(secret);

end